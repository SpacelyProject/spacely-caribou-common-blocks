
// SPI Controller to communicate with the SP3A_spi_slave_register_files block on the SP3A chip. 

// Author: Luc Ah-Hot
// Last updated: 03/26/24

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
    SETUP=1.
    ZERO=2,
    WE=3,
    OPCODE_GROUP=4,                       
    SEND_ADDRESS=5,
    SEND_DATA=6,
    RECEIVE_DATA=7
} state;

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
logic [1:0] setup_counter, setup_counter_c;

// Opcode group counter to count 2 cycle of spi_clk
logic [1:0] opcode_group_counter, opcode_group_counter_c;

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

    case(current_state) 

        // *** IDLE STATE ***
        IDLE: begin
        end // case: IDLE
        
        // *** SETUP STATE ***
        SETUP: begin
        end // case: SETUP

        // *** ZERO STATE ***
        ZERO: begin
        end // case: ZERO

        // *** WE STATE ***
        WE: begin
        end // case: WE

        // *** OPCODE_GROUP STATE ***
        OPCODE_GROUP: begin
        end // case: OPCODE_GROUP

        // *** SEND_ADDRESS ***
        SEND_ADDRESS: begin
        end // case: SEND_ADDRESS

        // *** SEND_DATA ***
        SEND_DATA: begin
        end // case: SEND_DATA

        // *** RECEIVE_DATA ***
        RECEIVE_DATA: begin
        end // case: RECEIVE_DATA

    endcase
end


endmodule