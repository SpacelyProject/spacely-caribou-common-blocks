// Clock divider to divide S_AXI_CLK by a factor written to an AXI register into spi_clk which is used to send SPI transactions.

// Author: Luc Ah-Hot
// Last updated: 04/23/24

module clock_divider (
    input   logic           input_clock,
    input   logic           reset,
    input   logic           divider_reset,
    input   logic  [4:0]    clock_divider_factor,
    output  logic           output_clock
);

// Max divide factor is 2^(2^5-1) == 2^31
parameter MAX_DIVIDE_FACTOR = 2**31;

logic [$clog2(MAX_DIVIDE_FACTOR)-1:0] counter;

// Temp calculated output clock if clock_divider_factor != 0
logic calculated_output_clock;

// If clock_divider_factor is 0, output_clock is the same as input_clock else it is calculated_output_clock
assign output_clock = (clock_divider_factor == 0) ? input_clock : calculated_output_clock;

always_ff @(posedge input_clock or posedge divider_reset) begin
    // Global reset
    if (~reset) begin
        counter <= 0;
        calculated_output_clock <= 0; 
    // Resets counter and clock output when changing the divider factor
    end else if (divider_reset) begin
        counter <= 0;
        calculated_output_clock <= 0;
    end else begin
        if (counter == (2**(clock_divider_factor) - 1)) begin
        counter <= 0;
        end else begin
            counter <= counter + 1;
        end
        // Toggle clock
        calculated_output_clock <= (counter < ((2**(clock_divider_factor)) >> 1)) ? 1'b1 : 1'b0;
    end
end

endmodule