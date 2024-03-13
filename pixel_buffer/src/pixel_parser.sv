`define NULL_PIXEL 21'h0;

module data_frame_mem (
    input   logic           clka,
    input   logic [0 : 0]   wea,
    input   logic [6 : 0]   addra,
    input   logic [447 : 0] dina,
    input   logic           clkb,
    input   logic [6 : 0]   addrb,
    output  logic [447 : 0] doutb
    );

    assign doutb = 448'h0;

    // GENERATED USING BRAM GENERATOR 8.4

    // data_frame_mem your_instance_name (
    //   .clka(clka),    // input wire clka
    //   .wea(wea),      // input wire [0 : 0] wea
    //   .addra(addra),  // input wire [6 : 0] addra
    //   .dina(dina),    // input wire [447 : 0] dina
    //   .clkb(clkb),    // input wire clkb
    //   .addrb(addrb),  // input wire [6 : 0] addrb
    //   .doutb(doutb)   // output wire [447 : 0] doutb
    // );

endmodule

module pixel_mem (
    input   logic           clka,
    input   logic [0 : 0]   wea,
    input   logic [8 : 0]   addra,
    input   logic [21 : 0]  dina,
    input   logic           clkb,
    input   logic [8 : 0]   addrb,
    output  logic [21 : 0]  doutb
    );

    assign doutb = 21'h0;

    // GENERATED USING BRAM GENERATOR 8.4

    // data_frame_mem your_instance_name (
    //   .clka(clka),    // input wire clka
    //   .wea(wea),      // input wire [0 : 0] wea
    //   .addra(addra),  // input wire [8 : 0] addra
    //   .dina(dina),    // input wire [21 : 0] dina
    //   .clkb(clkb),    // input wire clkb
    //   .addrb(addrb),  // input wire [8 : 0] addrb
    //   .doutb(doutb)   // output wire [21 : 0] doutb

endmodule

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

    input logic valid_in
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

module decode_store(

    input logic valid_in,
    input logic rd_en,
    input logic [20:0] data_in,

    input logic clk,
    input logic rstb,

    output logic [8:0] num_elem,
    output logic [21:0] data_out,
    output logic err_overwr
    
    );

    logic [8:0] wr_head, rd_head;
    logic [21:0] wr_data;
    logic wr_en;

    enum logic [1:0] {IDLE, RECV_NULL, RECV_DATA} state;

    logic [20:0] data_temp;
    logic [20:0] null_counter;

    assign wr_en = ((state == RECV_NULL) && (data_in != NULL_PIXEL)) || (state == RECV_DATA);

    assign wr_data =    (state == RECV_NULL) ? {1'b1, null_counter} :
                        (state == RECV_DATA) ? {1'b0, data_temp}    :
                        22'h0;

    assign err_overwr = wr_en && (num_elem == 9'h1ff);

    always @ (posedge clk or negedge rstb) begin

        if (!rstb) begin

            state           <= IDLE;
            data_history    <= 0;
            null_counter    <= 0;
            num_elem        <= 0;
            wr_head         <= 0;
            rd_head         <= 0;
            wr_en           <= 0;
            wr_data         <= 0;

        end else begin

            wr_en <= 0;
            wr_head <=  wr_en                     ? wr_head + 1 : wr_head;
            rd_head <= (rd_en && (num_elem != 0)) ? rd_head + 1 : rd_head;

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

                        if (data_in == NULL_PIXEL) begin
                            // NULL in temp reg
                            // another NULL received

                            null_counter <= null_counter + 1;
                            state <= RECV_NULL;

                            num_elem <= (rd_en && (num_elem != 0)) ? num_elem - 1 : num_elem;

                        end else begin
                            // NULL in temp reg
                            // DATA received

                            // write a null spacer into fifo
                            null_counter <= 0;
                            state <= RECV_DATA;

                            num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;

                        end

                    end

                    RECV_DATA: begin

                        if (data_in == NULL_PIXEL) begin
                            // DATA in temp reg
                            // NULL received

                            // write data into FIFO
                            // start counting NULLs
                            null_counter <= null_counter + 1;
                            state <= RECV_NULL

                            num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;
                            
                        end else begin
                            // DATA in temp reg
                            // DATA received

                            // write data in temp into FIFO
                            state <= RECV_DATA;

                            num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;

                        end

                    end

                endcase

            end

        end

    end

    pixel_mem PIXMEM (
      .clka     (clk), 
      .wea      (wr_en),
      .addra    (wr_head),
      .dina     (wr_data),
      .clkb     (clk), 
      .addrb    (rd_head),
      .doutb    (data_out)
    );

endmodule

module decode_store_x28 (
    input logic valid_in,
    input logic rd_en [27:0],
    input logic [20:0] data_in [27:0],

    input logic clk,
    input logic rstb,

    output logic [8:0] num_elem [27:0],
    output logic [21:0] data_out [27:0],
    output logic err_overwr [27:0],
);

    genvar i;

    generate

        for (i = 0; i < 28; i = i + 1) begin
            decode_store DECSTORE0 (
                valid_in    (valid_in),
                rd_en       (rd_en[i]),
                data_in     (data_in[i]),
                clk         (clk),
                rstb        (rstb),
                num_elem    (num_elem[i]),
                data_out    (data_out[i]),
                err_overwr  (err_overwr[i])
            );
        end

    endgenerate

endmodule
