`define NULL_PIXEL 21'h something;

module data_frame_ram (
    input logic [447:0] DINA, // each frame is 28 * 16 bits
    output logic [447:0] DOUTA,

    input logic [6:0] ADDRA, // 128 words to store 128 frames
    input logic WEA,
    input logic RSTA,
    input logic CLKA
    );

    // store data frames for debugging purposes
    
    logic [447:0] mem [6:0];

    assign DOUTA = mem [ADDRA];

    always @ (posedge CLKA) begin

        if (WEA) begin

            mem [ADDRA] <= DINA;

        end

    end

endmodule

module frame_buffer (
    input logic [10:0] DINA, // each pixel is 11 bits
    input logic [13:0] ADDRA, // stores 16 full frames at 1024 pixels each
    input logic WEA,
    input logic RSTA,
    input logic CLKA
    );

    // stores 10 images from a single array
    // will need to instantiate 28 of these in the top module

endmodule

module store_dataframe(
    input logic [447:0] dataframe,
    input logic dataframe_valid,

    output logic [6:0] write_head

    input logic clk,
    input logic rst
    );

    always @ (posedge clk or negedge rst) begin
        
        if (rst) begin

            write_head <= 0;

        end else begin

            write_head <=   dataframe_valid ? write_head + 1 : write_head;

        end

    end

    data_frame_ram DFRAM0 (
        .DINA   (dataframe), // each frame is 28 * 16 bits
        .ADDRA  (write_head), // 128 words to store 128 frames
        .WEA    (dataframe_valid),
        .RSTA   (rst),
        .CLKA   (clk)
    );

endmodule

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

    genvar i;

    generate
        
        for (i=0 ; i<28 ; i=i+1) begin

            align uAlign (
                .valid_in   (valid_in),
                .data_in    (data_in[i*16+15 : i*16]),
                .clk        (clk),
                .rstb       (rstb),
                .data_out   (data_out[i]),
                .valid_out  (valid_out[i])
            );

        end

    endgenerate

endmodule

module decode(

    input logic valid_in,
    input logic [20:0] data_in [27:0],

    input logic clk,
    input logic rstb,

    output logic [20:0] data_out [27:0],
    output logic valid_out

    );

    enum logic [1:0] {IDLE, RECV_NULL, RECV_DATA} state;

    logic [20:0] data_temp;

    logic [20:0] null_counter;

    always @ (posedge clk or negedge rstb) begin

        if (!rstb) begin

            state           <= IDLE;
            data_history    <= 0;
            null_counter    <= 0;

        end else begin

            if (valid_in) begin

                data_temp <= data_in;

                case (state)

                    IDLE: begin

                        if (data_in == NULL_PIXEL) begin

                            null_counter <= null_counter + 1;

                            state <= RECV_NULL;

                        end else begin



                            state <= RECV_DATA;

                        end

                    end

                    RECV_NULL: begin

                    end

                    RECV_DATA: begin

                    end

                endcase

            end

        end

    end

endmodule