module align_tb ();

    reg valid_top_to_align;
    reg [15:0] data_top_to_align;
    reg rd_en;

    reg clk, rstb;

    wire [21:0] data_out;
    wire [20:0] data_align_to_decode;
    wire [8:0] num_elem;
    wire err_overwr;

    always #5 clk <= ~clk;

    initial begin

        valid_top_to_align = 0;
        data_top_to_align = 0;
        clk = 0;
        rstb = 1;
        rd_en = 0;

        #0 rstb = 0;
        #0 rstb = 1;

        valid_top_to_align = 1;
        data_top_to_align = 16'ha0a0;

        #300

        data_top_to_align = 16'h0;

        #300

        data_top_to_align = 16'ha0a0;

        #300

        rd_en = 1;

        #300

        valid_top_to_align = 0;

        #400

        $finish;

    end

    align uAlign (
        .valid_in   (valid_top_to_align),
        .data_in    (data_top_to_align),
        .clk        (clk),
        .rstb       (rstb),
        .data_out   (data_align_to_decode),
        .valid_out  (valid_align_to_decode)
    );

    decode_store uDecode (

        .valid_in   (valid_align_to_decode),
        .rd_en      (rd_en),
        .data_in    (data_align_to_decode),
        .clk        (clk),
        .rstb       (rstb),
        .num_elem   (num_elem),
        .data_out   (data_out),
        .err_overwr (err_overwr)    

    );


endmodule