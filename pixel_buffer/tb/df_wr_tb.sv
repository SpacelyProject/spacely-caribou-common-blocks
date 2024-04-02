module df_wr_tb ();

    reg wr_en, rd_en;
    reg [447:0] data_in;

    reg clk, rstb;

    wire [20:0] data_out;
    wire [6:0] num_elem;
    wire valid_out;
    wire err_overwr;

    always #5 clk <= ~clk;

    initial begin

        wr_en = 0;
        rd_en = 0;
        data_in = 0;
        clk = 0;
        rstb = 1;

        #0 rstb = 0;
        #0 rstb = 1;

        wr_en = 1;
        data_in = {28{16'h00ff}};

        #300

        rd_en = 1;

        #150

        wr_en = 0;

        #400

        $finish;

    end

    store_dataframe uDFWR(
        .data_in    (data_in),
        .wr_en      (wr_en),
        .rd_en      (rd_en),
        .num_elem   (num_elem),
        .data_out   (),
        .err_overwr (err_overwr),
        .clk        (clk),
        .rstb       (rstb)
    );

endmodule