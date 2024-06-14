vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_12
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_25
vlib modelsim_lib/msim/axi_register_slice_v2_1_26
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_26

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 modelsim_lib/msim/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 modelsim_lib/msim/axi_data_fifo_v2_1_25
vmap axi_register_slice_v2_1_26 modelsim_lib/msim/axi_register_slice_v2_1_26
vmap axi_protocol_converter_v2_1_26 modelsim_lib/msim/axi_protocol_converter_v2_1_26

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

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0/sim/cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_proc_sys_reset_0_0/sim/cms_pix_28_fw_top_bd_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_fw_top_v_0_0/sim/cms_pix_28_fw_top_bd_fw_top_v_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93 \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26 -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/ec67/hdl" "+incdir+../../../../cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ipshared/8cdf/hdl" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_auto_pc_0/sim/cms_pix_28_fw_top_bd_auto_pc_0.v" \
"../../../bd/cms_pix_28_fw_top_bd/sim/cms_pix_28_fw_top_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

