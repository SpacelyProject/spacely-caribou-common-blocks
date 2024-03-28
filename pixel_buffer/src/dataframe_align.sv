function [20:0] mask_gen(
    input  [ 4:0] sel_end,
    input  [ 4:0] sel_start
    );
    begin
        mask_gen = ({21{1'b1}} << sel_start) & ({21{1'b1}} >> (20 - sel_end));
    end
endfunction

module update_push (
    output logic [20:0] buffer_out,
    output logic [ 5:0] bits_in_buffer_out,
    output logic [20:0] data_out,

    input  logic [20:0] buffer_in,
    input  logic [ 5:0] bits_in_buffer_in,
    input  logic [15:0] data_in
    );
    
    wire [20:0] data_in_ext;
    assign data_in_ext = {{5{1'b0}}, data_in};

    assign buffer_out = mask_gen(bits_in_buffer_in - 5,0) & (data_in_ext >> (21 - bits_in_buffer_in));
    assign bits_in_buffer_out = bits_in_buffer_in - 5;
    assign data_out = (mask_gen(20,bits_in_buffer_in) & (data_in_ext << bits_in_buffer_in)) | (mask_gen(bits_in_buffer_in-1, 0) & buffer_in);

endmodule

module update_add (
    output logic [20:0] buffer_out,
    output logic [ 5:0] bits_in_buffer_out,

    input  logic [20:0] buffer_in,
    input  logic [ 5:0] bits_in_buffer_in,
    input  logic [15:0] data_in
    );
    
    wire [20:0] data_in_ext;
    assign data_in_ext = {{5{1'b0}}, data_in};

    assign buffer_out = (data_in << bits_in_buffer_in) | (mask_gen(bits_in_buffer_in-1, 0) & buffer_in);
    assign bits_in_buffer_out = bits_in_buffer_in + 16;

endmodule

module align(

    input logic valid_in,
    input logic [15:0] data_in,

    input logic clk,
    input logic rstb,

    output logic [20:0] data_out,
    output logic valid_out

    );

    logic [5:0] bits_in_buffer;

    logic [20:0] buffer;

    wire [20:0] buf_update_add, buf_update_push, dat_update_push;
    wire [5:0]  bib_update_add, bib_update_push;

    always @ (posedge clk or negedge rstb) begin

        if (!rstb) begin

            bits_in_buffer <= 0;
            data_out <= 0;
            valid_out <= 0;

        end else begin

            valid_out <= 0;

            if (valid_in) begin

                if ((bits_in_buffer + 16) >= 21) begin

                    // send 21 bits downstream (assert valid_out)
                    valid_out <= 1;
                    data_out <= dat_update_push;

                    // update bits in buffer
                    buffer <= buf_update_push;

                    bits_in_buffer <= bib_update_push;

                end else begin

                    // add 16 bits to the current buffer
                    // update bits in buffer

                    buffer <= buf_update_add;

                    bits_in_buffer <= bib_update_add;

                end

            end
        
        end

    end

    update_push uUP (
        .buffer_out         (buf_update_push),
        .bits_in_buffer_out (bib_update_push),
        .data_out           (dat_update_push),
        .buffer_in          (buffer),
        .bits_in_buffer_in  (bits_in_buffer),
        .data_in            (data_in)
    );

    update_add uUA (
        .buffer_out         (buf_update_add),
        .bits_in_buffer_out (bib_update_add),
        .buffer_in          (buffer),
        .bits_in_buffer_in  (bits_in_buffer),
        .data_in            (data_in)
    );

endmodule

module align_x28(

    input logic valid_in,
    input logic [447:0] data_in,

    input logic clk,
    input logic rstb,

    output logic [20:0] data_out [27:0],
    output logic valid_out,

    output err_out_of_sync

    );

    wire [27:0] valid_out_x28;

    assign err_out_of_sync = ~((valid_out_x28 == ~(28'h0)) | (valid_out_x28 == 28'h0));

    assign valid_out = valid_out_x28 == (28'hfffffff);

    genvar i;

    generate
        
        for (i=0 ; i<28 ; i=i+1) begin

            align uAlign (
                .valid_in   (valid_in),
                .data_in    (data_in[i*16+15 : i*16]),
                .clk        (clk),
                .rstb       (rstb),
                .data_out   (data_out[i]),
                .valid_out  (valid_out_x28[i])
            );

        end

    endgenerate

endmodule