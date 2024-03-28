module store_dataframe(
    input logic [447:0] data_in,
    input logic wr_en,
    input logic rd_en,

    output logic [6:0] num_elem,
    output logic [447:0] data_out,
    output logic err_overwr,

    input logic clk,
    input logic rstb
    );

    logic [6:0] wr_head, rd_head;

    always @ (posedge clk or negedge rstb) begin
        
        if (!rstb) begin

            wr_head     <= 0;
            rd_head     <= 0;
            num_elem    <= 0;
            err_overwr  <= 0;

        end else begin

            // if FIFO is full and write is attempted,
            // FIFO will overwrite, but will signal using error bit
            err_overwr  <= (num_elem == 7'h7F) && wr_en;

            // increment if enabled
            // leverage overflow behavior for wraparound
            wr_head     <=  wr_en                     ? wr_head + 1 : wr_head;
            rd_head     <= (rd_en && (num_elem != 0)) ? rd_head + 1 : rd_head;

            if (wr_en && !rd_en) begin

                // if write but not read
                // increment if FIFO is not full
                num_elem <= (num_elem == 7'h7F) ? num_elem : num_elem + 1;

            end else if (!wr_en && rd_en) begin

                // if read but not write
                // decerement if FIFO is not empty
                num_elem <= (num_elem == 7'b0) ? num_elem : num_elem - 1;

            end

        end

    end

    data_frame_mem DFMEM0 (
      .clka     (clk),      // input wire clka
      .wea      (wr_en),    // input wire [0 : 0] wea
      .addra    (wr_head),  // input wire [6 : 0] addra
      .dina     (data_in),  // input wire [447 : 0] dina
      .clkb     (clk),      // input wire clkb
      .addrb    (rd_head),  // input wire [6 : 0] addrb
      .doutb    (data_out)  // output wire [447 : 0] doutb
    );

endmodule


