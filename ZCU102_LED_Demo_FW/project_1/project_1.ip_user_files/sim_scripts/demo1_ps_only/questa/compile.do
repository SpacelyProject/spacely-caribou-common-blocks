vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/ec67/hdl" "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/ec67/hdl" "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/ec67/hdl" "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/ec67/hdl" "+incdir+../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/ip/demo1_ps_only_zynq_ultra_ps_e_0_0/sim/demo1_ps_only_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../../demo1_ps_only.gen/sources_1/bd/demo1_ps_only/sim/demo1_ps_only.v" \

vlog -work xil_defaultlib \
"glbl.v"

