// Testbench for clock_divider

// Author: Luc Ah-Hot
// Last updated: 04/23/24

`timescale 1ns/1ps

module clock_divider_tb;

// Parameters to be used
parameter PERIOD = 10; //100MHz

//CLK Generation
logic clock;
always begin
  clock = 1'b0;
  #(PERIOD/2);
  clock = 1'b1;
  #(PERIOD/2);
end

// Clock divider signals
logic divider_reset = 0;
logic [4:0] clock_divider_factor = 0;
logic output_clock;

clock_divider clock_divider_inst (
    .input_clock(clock),
    .divider_reset(divider_reset),
    .clock_divider_factor(clock_divider_factor),
    .output_clock(output_clock)
);

initial begin

    // output_clock should have the same frequency as clock 
    @(posedge clock);
    divider_reset = 1'b1;
    clock_divider_factor = 0;
    @(posedge clock);
    divider_reset = 1'b0;

    #1000;

    // output_clock should be half the frequency of clock
    divider_reset = 1'b1;
    clock_divider_factor = 1;
    @(posedge clock);
    divider_reset = 1'b0;

    #1000;

    // output_clock should be 1/8 the frequency of clock
    divider_reset = 1'b1;
    clock_divider_factor = 3;
    @(posedge clock);
    divider_reset = 1'b0;

    #1000;

    // output_clock should be 1/128 the frequency of clock
    divider_reset = 1'b1;
    clock_divider_factor = 7;
    @(posedge clock);
    divider_reset = 1'b0;

    #1000;

    $finish;
end

endmodule


