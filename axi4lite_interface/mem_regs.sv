
module mem_regs #(
        parameter int unsigned REGISTER_N=16,
        parameter int unsigned REG_DATA_WIDTH=32,
        parameter int unsigned REG_ADDR_WIDTH=9
    )(
        // REG INTERFACE:
        output [REG_DATA_WIDTH-1:0] 	  reg_wrdout,
        output [((REG_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [REGISTER_N-1:0],
        output 				  reg_rdStrobe [REGISTER_N-1:0],
        input [REG_DATA_WIDTH-1:0] 	  reg_rddin [REGISTER_N-1:0],
        // MEM INTERFACE
        input 				  mem_wrSelect,
        input 				  mem_rdSelect,
        output [REG_DATA_WIDTH-1:0] 	  mem_rddout,
        input [REG_DATA_WIDTH-1:0] 	  mem_wrdin,
       // Note, we use ADDR_WIDTH here even if it's larger than log2(REGISTER_N). We may have a few inefficient address bits, but at least it works for
       // the case where REGISTER_N = 1 (log2=0)
        input [REG_ADDR_WIDTH-1:0] 	  mem_rdAddr,
        input [REG_ADDR_WIDTH-1:0] 	  mem_wrAddr,
        input [((REG_DATA_WIDTH-1)/8):0]  mem_wrByteStrobe,
        input 				  mem_rdStrobe
    );

    logic [REG_DATA_WIDTH-1:0] mem_rddout_i;
    logic reg_rdStrobe_i [REGISTER_N-1:0];
    logic reg_wrSelect_i [REGISTER_N-1:0];

    assign reg_wrdout = mem_wrdin;

    assign mem_rddout = mem_rddout_i;

    always_comb begin
      if (mem_rdSelect && (mem_rdAddr < REGISTER_N))
        mem_rddout_i = reg_rddin[mem_rdAddr];
      else
        mem_rddout_i = 'b0;
    end

    generate
      for (genvar i=0; i<REGISTER_N; i=i+1) begin : demux
        always_comb begin : rd
          if (mem_rdSelect && (mem_rdAddr == i))
            reg_rdStrobe_i[i] = mem_rdStrobe;
          else
            reg_rdStrobe_i[i] = 1'b0;
        end :rd
        assign reg_rdStrobe[i] = reg_rdStrobe_i[i];

        always_comb begin : wr
          if (mem_wrSelect && (mem_wrAddr == i))
            reg_wrSelect_i[i] = 1'b1;
          else
            reg_wrSelect_i[i] = 1'b0;
        end :wr
        assign reg_wrByteStrobe[i] = reg_wrSelect_i[i] ? mem_wrByteStrobe : {(((REG_DATA_WIDTH-1)/8)+1){1'b0}};

      end : demux
    endgenerate

endmodule
