module pixel_tb ();

    reg valid_in;
    reg [15:0] data_in;

    reg clk, rstb;

    wire [20:0] data_out;

    wire valid_out;

    always #5 clk <= ~clk;

    initial begin

        valid_in = 0;
        data_in = 0;
        clk = 0;
        rstb = 1;

        #0 rstb = 0;
        #0 rstb = 1;

        valid_in = 1;
        data_in = 16'ha0a0;

        #300

        $finish;

    end

    align uAlign (
        .valid_in   (valid_in),
        .data_in    (data_in),
        .clk        (clk),
        .rstb       (rstb),
        .data_out   (data_out),
        .valid_out  (valid_out)
    );


endmodule