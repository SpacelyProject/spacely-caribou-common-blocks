
module decode_store #(
    parameter NULL_PIXEL = 21'b0
)(

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
    logic valid_in_delayed;

    enum logic [1:0] {IDLE, RECV_NULL, RECV_DATA} state;

    logic [20:0] data_temp;
    logic [20:0] null_counter;

    assign wr_en = (((state == RECV_NULL) && (data_in != NULL_PIXEL)) || (state == RECV_DATA)) && valid_in_delayed;

    assign wr_data =    (state == RECV_NULL) ? {1'b1, null_counter} :
                        (state == RECV_DATA) ? {1'b0, data_temp}    :
                        22'h0;

    assign err_overwr = wr_en && (num_elem == 9'h1ff);

    always @ (posedge clk or negedge rstb) begin

        if (!rstb) begin

            state           <= IDLE;
            null_counter    <= 0;
            num_elem        <= 0;
            wr_head         <= 0;
            rd_head         <= 0;
            data_temp       <= 0;
            valid_in_delayed <= 0;

        end else begin

            wr_head <=  wr_en                     ? wr_head + 1 : wr_head;
            rd_head <= (rd_en && (num_elem != 0)) ? rd_head + 1 : rd_head;

            num_elem <=     (rd_en && !wr_en && (num_elem !=  9'h0)) ? num_elem - 1 :
                            (wr_en && !rd_en && (num_elem != ~9'h0)) ? num_elem + 1 :
                            num_elem;

            valid_in_delayed <= valid_in;

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

                            // num_elem <= (rd_en && (num_elem != 0)) ? num_elem - 1 : num_elem;

                        end else begin
                            // NULL in temp reg
                            // DATA received

                            // write a null spacer into fifo
                            null_counter <= 0;
                            state <= RECV_DATA;

                            // num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;

                        end

                    end

                    RECV_DATA: begin

                        if (data_in == NULL_PIXEL) begin
                            // DATA in temp reg
                            // NULL received

                            // write data into FIFO
                            // start counting NULLs
                            null_counter <= null_counter + 1;
                            state <= RECV_NULL;

                            // num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;
                            
                        end else begin
                            // DATA in temp reg
                            // DATA received

                            // write data in temp into FIFO
                            state <= RECV_DATA;

                            // num_elem <= ((!rd_en) && (num_elem != 9'h1ff)) ? num_elem + 1 : num_elem;

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
    output logic err_overwr [27:0]
);

    genvar i;

    generate

        for (i = 0; i < 28; i = i + 1) begin
            decode_store DECSTORE0 (
                .valid_in    (valid_in),
                .rd_en       (rd_en[i]),
                .data_in     (data_in[i]),
                .clk         (clk),
                .rstb        (rstb),
                .num_elem    (num_elem[i]),
                .data_out    (data_out[i]),
                .err_overwr  (err_overwr[i])
            );
        end

    endgenerate

endmodule
