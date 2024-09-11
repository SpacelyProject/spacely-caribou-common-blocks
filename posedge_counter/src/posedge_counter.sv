//
//   posedge_counter
//
//   aquinn@fnal.gov -- 7/24/2024
//
module posedge_counter
#(
  parameter integer NUM_SIG=8
) (
   input logic axi_resetn,
   input logic [(NUM_SIG-1):0] input_signals,
   output logic [31:0] 	       count_0,
   output logic [31:0] 	       count_1,
   output logic [31:0] 	       count_2,
   output logic [31:0] 	       count_3,
   output logic [31:0] 	       count_4,
   output logic [31:0] 	       count_5,
   output logic [31:0] 	       count_6,
   output logic [31:0] 	       count_7
);


   logic [(NUM_SIG-1):0][31:0] count_internal;


   for (genvar i=0; i<NUM_SIG; i++) begin
      always_ff @(posedge input_signals[i], negedge axi_resetn) begin
   if (!axi_resetn) begin
      count_internal[i] <= 32'b0;
   end
   else begin
      count_internal[i] <= count_internal[i] + 1;
   end
      end
end


   always_comb begin
      if (NUM_SIG > 0)
  count_0 = count_internal[0];
      else
  count_0 = 0;

      if (NUM_SIG > 1)
  count_1 = count_internal[1];
      else
  count_1 = 0;

      if (NUM_SIG > 2)
  count_2 = count_internal[2];
      else
  count_2 = 0;
      if (NUM_SIG > 3)
  count_3 = count_internal[3];
      else
  count_3 = 0;
      if (NUM_SIG > 4)
  count_4 = count_internal[4];
      else
  count_4 = 0;
      if (NUM_SIG > 5)
  count_5 = count_internal[5];
      else
  count_5 = 0;
      if (NUM_SIG > 6)
  count_6 = count_internal[6];
      else
  count_6 = 0;
      if (NUM_SIG > 7)
  count_7 = count_internal[7];
      else
  count_7 = 0;

  end

endmodule // posedge_counter
