
// SPI Controller to communicate with the SP3A_spi_slave_register_files block on the SP3A chip. 

// Author: Luc Ah-Hot
// Last updated: 03/28/24

module spi_controller_SP3A #(
// Width of S_AXI data bus
  parameter integer C_S_AXI_DATA_WIDTH=32
) (
    // Input clock from AXI interface
    input   logic   axi_clk, 

    input   logic   reset_b,

    // Inputs from fpga_regs
    input   logic   WnR,
    input   logic [9:0] spi_address,
    input   logic [7:0] spi_data_len,
    input   logic [1:0] spi_opcode_group,

    // I/O to spi_command_buffer
    output  logic   spi_command_rd_en,
    input   logic   spi_command_empty,
    input   logic [C_S_AXI_DATA_WIDTH-1:0] spi_command_dout,

    // I/O to spi_read_buffer
    output  logic   spi_read_wr_en,
    input   logic   spi_read_full,
    output  logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_din,

    // Inputs/Outputs to generic_spi_peripheral on SP3 
    output  logic   pico,
    output  logic   cs_b,
    output  logic   spi_clk,

    input   logic   poci,

    // Output back to SParkDream_device to indicate that the SPI transaction has been completed
    // and it can read in a new SPI command from the AXI interface
    output  logic   done
);

// spi_clk is synced up with axi_clk (S_AXI_ACLK) (TBD)
assign spi_clk = axi_clk;

// Define states for SPI controller operations
// Need more states than spi_controller_SP3 and SPI operations are a lot more complicated
typedef enum logic[2:0] {
    IDLE=0,
    SETUP=1,
    SEND_ADDRESS=2,
    OPCODE_GROUP=3,
    WE=4,                       
    ZERO=5,
    SEND_DATA=6,
    RECEIVE_DATA=7
} state;

//////////////////////////
// CREATING THE OPCODE  //
//////////////////////////

// We need to send over an opcode to the SPI peripheral on pico in the following format:
// {Address (8-bits)} {Opcode Group (2-bits)} {WE (1-bit)} {0} + {Any data for SPI writes}

// Holds our next state for the next clock cycle
state current_state, next_state;

// Holds the popped data word from spi_command_buffer to send to pico serially
logic [C_S_AXI_DATA_WIDTH-1:0] command_buffer_data, command_buffer_data_c;

// Counter to count which bit of command_buffer_data we are sending
logic [$clog2(C_S_AXI_DATA_WIDTH)-1:0] command_buffer_counter, command_buffer_counter_c;

// Counter to count which bit of the spi_address we are sending
logic [3:0] address_counter, address_counter_c;

// Counter to count how many bits of data we have pushed (important send the correct amounts of bits according to spi_data_len)
logic [7:0] pico_counter, pico_counter_c;

// Holds the data to be pushed into spi_read_buffer to send back to Peary Server over the AXI bus
logic [C_S_AXI_DATA_WIDTH-1:0] read_buffer_data, read_buffer_data_c;

// Counter to count which bit of read_buffer_data we are writing to
logic [$clog2(C_S_AXI_DATA_WIDTH)-1:0] read_buffer_counter, read_buffer_counter_c;

// Counter to count how many bits of data we have read (important to read the correct amount of bits according to spi_data_len)
logic [7:0] poci_counter, poci_counter_c; 

// Setup counter to count 2 cycles of spi_clk
logic setup_counter, setup_counter_c;

// Opcode group counter to count 2 cycle of spi_clk
logic opcode_group_counter, opcode_group_counter_c;

// Clocking values from combinational variables to registered variables
always_ff @(posedge axi_clk or negedge reset_b) begin
    if (!reset_b) begin

        // Reset state 
        current_state <= IDLE;

        // Reset internal variables
        command_buffer_data <= '0;
        command_buffer_counter <= '0;
        address_counter <= '0;
        pico_counter <= '0;
        read_buffer_data <= '0;
        read_buffer_counter <= '0;
        poci_counter <= '0;
        setup_counter <= '0;
        opcode_group_counter <= '0;

    end else begin

        current_state <= next_state;
        command_buffer_data <= command_buffer_data_c;
        command_buffer_counter <= command_buffer_counter_c;
        address_counter <= address_counter_c;
        pico_counter <= pico_counter_c;
        read_buffer_data <= read_buffer_data_c;
        read_buffer_counter <= read_buffer_counter_c;
        poci_counter <= poci_counter_c;
        setup_counter <= setup_counter_c;
        opcode_group_counter <= opcode_group_counter_c;

    end
end

always_comb begin
    // Default assignment of variables
    // Outputs
    spi_command_rd_en = 1'b0;
    spi_read_wr_en = 1'b0;
    spi_read_din = '0;
    pico = 1'b0;
    cs_b = 1'b1;
    done = 1'b0;

    // Internal registers
    command_buffer_data_c = command_buffer_data;
    command_buffer_counter_c = command_buffer_counter;
    address_counter_c = address_counter;
    pico_counter_c = pico_counter;
    read_buffer_data_c = read_buffer_data;
    read_buffer_counter_c = read_buffer_counter;
    poci_counter_c = poci_counter;
    setup_counter_c = setup_counter;
    opcode_group_counter_c = opcode_group_counter;

    case(current_state) 

        // *** IDLE STATE ***
        IDLE: begin
            // IDLE internal register values (same as reset)
    
            command_buffer_data_c = '0;
            command_buffer_counter_c = '0;
            address_counter_c = '0;
            pico_counter_c = '0;
            read_buffer_data_c = '0;
            read_buffer_counter_c = '0;
            poci_counter_c = '0;
            setup_counter_c = '0;
            opcode_group_counter_c = '0;

            // If spi_data_len is NOT 0, this triggers the start sending SPI command
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                next_state = SETUP;
                // Start the SPI command by sending the WnR bit over pico and setting cs_b to low (active-low signal)
                cs_b = 1'b0;
                pico = 1'b0; // After cs_b is asserted, the first 2 values of pico are not important and not read by the SPI peripheral
            end
        end // case: IDLE
        
        // *** SETUP STATE ***
        SETUP: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                setup_counter_c = setup_counter + 1'b1;
                pico = 1'b0;
                // After 2 setup cycles, move on to the ZERO state
                if (setup_counter == 1'b1) begin
                    next_state = SEND_ADDRESS; // NOTE: SP3A_spi_slave_register_files expects the address first (versus the zero bit)
                    address_counter_c = 0; 
                end else 
                    next_state = SETUP;
            end
        end // case: SETUP
        
        // *** SEND_ADDRESS ***
        SEND_ADDRESS: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // Send the address over pico (sent in BIG-ENDIAN order)
                pico = spi_address[address_counter];
                address_counter_c = address_counter + 1;
                // Check to see if address_counter == 7 and switch to OPCODE_GROUP if so
                if (address_counter == 7) begin
                    next_state = OPCODE_GROUP;
                    opcode_group_counter_c = 0;
                end else begin
                    next_state = SEND_ADDRESS;
                end
            end
        end // case: SEND_ADDRESS

        // *** OPCODE_GROUP STATE ***
        OPCODE_GROUP: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // Send the opcode group over pico (sent in BIG-ENDIAN order)
                pico = spi_opcode_group[opcode_group_counter];
                opcode_group_counter_c = opcode_group_counter + 1;
                // Check to see if opcode_group_counter == 1 and switch to WE if so
                if (opcode_group_counter == 1) begin
                    next_state = WE;
                end else begin
                    next_state = OPCODE_GROUP;
                end
            end
        end // case: OPCODE_GROUP

        // *** WE STATE ***
        WE: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // The WE bit will be set to the value of WnR
                pico = WnR;
                next_state = ZERO; 
            end
        end // case: WE

        // *** ZERO STATE ***
        ZERO: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // Send a zero bit
                pico = 1'b0;
                // Determine if this is a read or write SPI operation to go to SEND_DATA or RECEIVE_DATA
                if (WnR == 1'b1) begin
                    next_state = SEND_DATA;
                    // Load first data word from spi_command_buffer into command_buffer_data (buffer should never be empty at this stage)
                    if (spi_command_empty == 1'b0) begin 
                        command_buffer_data_c = spi_command_dout;
                        spi_command_rd_en = 1'b1;
                        command_buffer_counter_c = 0;
                    end
                end else begin
                    next_state = RECEIVE_DATA;
                    read_buffer_counter_c = 0;
                end
            end
        end // case: ZERO

        // *** SEND_DATA ***
        SEND_DATA: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE;
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // If the next bit in command_buffer_data does not cause us to exceed spi_data_len, then send the bit
                if (pico_counter < spi_data_len) begin
                    pico = command_buffer_data[command_buffer_counter];
                    // Increment pico_counter
                    pico_counter_c = pico_counter + 1;
                    // Check if command buffer counter needs to be reset and we need to load in a new data word from spi_command_buffer
                    if (command_buffer_counter == 31) begin
                        command_buffer_counter_c = 0;
                        command_buffer_data_c = spi_command_dout;
                        spi_command_rd_en = 1'b1;
                    end else 
                        // Else decrement command_buffer_counter
                        command_buffer_counter_c = command_buffer_counter + 1;
                    next_state = SEND_DATA;
                end else begin
                    // After sending all the data, go back to IDLE state
                    next_state = IDLE;
                    // Make sure to de-assert cs_b to signal the end of the write transaction
                    cs_b = 1'b1;
                    // Assert done for 1 clock cycle to indicate that the SPI write has finished
                    done = 1'b1;
                end
            end
        end // case: SEND_DATA

        // *** RECEIVE_DATA ***
        RECEIVE_DATA: begin
            // For some reason, if spi_data_len is set to 0, reset everything by going back to the IDLE state
            if (spi_data_len == 0)
                next_state = IDLE; 
            else begin
                // Constantly assert cs_b
                cs_b = 1'b0;
                // If the next bit being written into read_buffer_data does not cause us to exceed spi_data_len, then write the bit from poci
                if (poci_counter < spi_data_len) begin
                    read_buffer_data_c[read_buffer_counter] = poci;
                    // Incremenet poci counter
                    poci_counter_c = poci_counter + 1;
                    // Check if read buffer counter needs to be reset and we need to push the current data word to spi_read_buffer
                    if (read_buffer_counter == 31) begin
                        read_buffer_counter_c = 0;
                        spi_read_wr_en = 1'b1;
                        spi_read_din = read_buffer_data;
                        // Reset read_buffer_data to 0
                        read_buffer_data_c = '0;
                    end else
                        // Else decrement read_buffer_counter
                        read_buffer_counter_c = read_buffer_counter + 1;
                    next_state = RECEIVE_DATA;
                end else begin
                    // Check if we need to push the current temp_word (which is not 32 bits long)
                    if (read_buffer_counter > 0) begin
                        read_buffer_counter_c = 0;
                        spi_read_wr_en = 1'b1;
                        spi_read_din = read_buffer_data;
                        // Reset read_buffer_data to 0
                        read_buffer_data_c = '0;
                    end
                    // After receiving all the data, go back to IDLE state
                    next_state = IDLE;
                    // Make sure to de-assert cs_b to signal the end of the read transaction
                    cs_b = 1'b1;
                    // Assert done for 1 clock cycle to indicate that the SPI read has finished
                    done = 1'b1;
                end
            end
        end // case: RECEIVE_DATA

        default: begin
            // Outputs
            spi_command_rd_en = 1'b0;
            spi_read_wr_en = 1'b0;
            spi_read_din = '0;
            pico = 1'b0;
            cs_b = 1'b1;
            done = 1'b0;

            // Internal registers
            command_buffer_data_c = 'X;
            command_buffer_counter_c = 'X;
            address_counter_c = 'X;
            pico_counter_c = 'X;
            read_buffer_data_c = 'X;
            read_buffer_counter_c = 'X;
            poci_counter_c = 'X;
            setup_counter_c = 'X;
            opcode_group_counter_c = 'X;
        end

    endcase
end


endmodule