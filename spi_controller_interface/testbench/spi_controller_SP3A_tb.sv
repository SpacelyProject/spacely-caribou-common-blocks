
// Testbench for spi_controller_SP3A

// Author: Luc Ah-Hot
// Last updated: 03/28/24

`timescale 1ps/1ps

module spi_controller_SP3A_tb;

// Parameters to be used
parameter PERIOD = 10; //100MHz
parameter integer C_S_AXI_DATA_WIDTH = 32;
parameter integer C_S_AXI_ADDR_WIDTH = 11;
parameter integer FIFO_BUFFER_SIZE = 10;

//Tb Signals
logic mismatch; //Used to find mismatch in expected outputs
string testcase; //Test Description
integer testnum; //Test Identifier

//CLK Generation
logic clock;
always begin
    clock = 1'b0;
    #(PERIOD/2);
    clock = 1'b1;
    #(PERIOD/2);
end

// SPI command FIFO signals
logic spi_command_reset;
logic spi_command_full;
logic spi_command_wr_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_command_din;
logic spi_command_empty;
logic spi_command_rd_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_command_dout; 

// SPI read FIFO signals
logic spi_read_reset;
logic spi_read_full;
logic spi_read_wr_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_din;
logic spi_read_empty;
logic spi_read_rd_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_dout;

// [lucahhot]: FIFO instantiation to hold SPI command data coming in from AXI bus (excluding R/W bit and SPI address)
fifo #(
  .FIFO_BUFFER_SIZE(FIFO_BUFFER_SIZE),
  .FIFO_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) spi_command_buffer (
  .reset(spi_command_reset),
  .wr_clk(clock),
  .wr_en(spi_command_wr_en),
  .din(spi_command_din),
  .full(spi_command_full),
  .rd_clk(clock),
  .rd_en(spi_command_rd_en),
  .dout(spi_command_dout),
  .empty(spi_command_empty)
);

// [lucahhot]: FIFO instantiation to hold SPI read data coming in from the SPI peripheral through spi_controller 
fifo #(
  .FIFO_BUFFER_SIZE(FIFO_BUFFER_SIZE),
  .FIFO_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) spi_read_buffer (
  .reset(spi_read_reset),
  .wr_clk(clock),
  .wr_en(spi_read_wr_en),
  .din(spi_read_din),
  .full(spi_read_full),
  .rd_clk(clock),
  .rd_en(spi_read_rd_en),
  .dout(spi_read_dout),
  .empty(spi_read_empty)
);

// [lucahhot]: Wires for spi_controller_inst
logic pico, cs_b, spi_clk, poci, done, reset_b;
logic WnR;
logic [9:0] spi_address;
logic [7:0] spi_data_len;
logic [1:0] spi_opcode_group;

// [lucahhot]: Instantiate SPI controller to send configuration instructions to SPI peripheral on SP3A chip
spi_controller_SP3A #(
.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
)  spi_controller_inst  (
  .axi_clk(clock),
  .reset_b(reset_b),
  .WnR(WnR),
  .spi_address(spi_address),
  .spi_data_len(spi_data_len),
  .spi_opcode_group(spi_opcode_group),
  .spi_command_rd_en(spi_command_rd_en),
  .spi_command_empty(spi_command_empty),
  .spi_command_dout(spi_command_dout),
  .spi_read_wr_en(spi_read_wr_en),
  .spi_read_full(spi_read_full),
  .spi_read_din(spi_read_din),
  .pico(pico),
  .cs_b(cs_b),
  .spi_clk(spi_clk),
  .poci(poci),
  .done(done)
);

task initialize; //Intial Signal Values for Testbench
begin
    //Internal Testbench Signals
    testcase = ".";
    testnum = 0;
    mismatch = 1'b0;

    //Reset
    reset_b = 1'b1;

    //SPI
    poci = 1'b0; // [lucahhot]: Data from the SPI peripheral will always be 0 for testing purposes

    // FIFO control signals
    spi_command_din = '0;
    spi_command_wr_en = 1'b0;
    spi_read_rd_en = 1'b0;

    // SPI register valuees
    WnR = '0;
    spi_address = '0;
    spi_data_len = '0;
    spi_opcode_group = '0;
    
end
endtask

// [lucahhot]: Task to load in SPI registers and FIFOs with appropriate information
task sendSPICommand;
    input logic         input_WnR;   
    input logic [9:0]   input_spi_address;
    input logic [7:0]   input_spi_data_len;
    input logic [1:0]   input_spi_opcode_group;  
    input logic [191:0] input_data;
begin

  // Temp variables
  logic [31:0] temp_word;
  logic [4:0] word_counter;
  logic [7:0] write_counter;

  temp_word = '0;
  word_counter = 31;
  write_counter = input_spi_data_len;

  // [lucahhot]: Start loading the write data for SPI write operations into the spi_command_buffer
  if (input_WnR == 1'b1) begin
      while (write_counter >= 0) begin
          // [lucahhot]: Write 1 bit into a temp word vector from input_data
          temp_word[word_counter] = input_data[write_counter-1];
          write_counter++;
          // Check if we need to push a temp word if it's full
          if (word_counter - 1 < 0) begin
              word_counter = 31;
              spi_command_din = temp_word;
              spi_command_wr_en = 1'b1;
              @(posedge clock);
              temp_word = '0;
          end else begin
              word_counter--;
          end
      end
      // [lucahhot]: Check if we need to push the current temp_word (which is not 32 bits long)
      if (word_counter < 31) begin
          word_counter = 31;
          spi_command_din = temp_word;
          spi_command_wr_en = 1'b1;
          @(posedge clock);
          temp_word = '0;
      end
  end 

  // Load all the inputs into spi_controller_SP3A ports
  WnR = input_WnR;
  spi_address = input_spi_address;
  spi_data_len = input_spi_data_len; // [lucahhot]: This assignment should trigger the SPI transaction (assuming not zero)
  spi_opcode_group = input_spi_opcode_group;

end
endtask

initial begin
    initialize();
    //Test 0; Reset
    @(posedge clock);
    reset_b = 1'b0;
    @(posedge clock);
    reset_b = 1'b1;

    @(posedge clock);

    // Test1: write global_counter_period
    testnum = 1;
    testcase = "Write Global Counter Period to SPI";
    // Opcode = 12'b01_01_0000_1010
    sendSPICommand(1'b1, 10'b00_0000_1010, 8'd14, 2'b01, 14'b11_0000_1000_1111);

end
endmodule