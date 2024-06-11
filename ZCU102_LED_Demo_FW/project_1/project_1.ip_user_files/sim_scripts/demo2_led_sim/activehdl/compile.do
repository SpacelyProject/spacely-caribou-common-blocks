vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/xil_defaultlib
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_28
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_26

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 activehdl/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_vip_0_0/sim/demo2_led_sim_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_vip_0_0/sim/demo2_led_sim_axi_vip_0_0.sv" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_gpio_0_0/sim/demo2_led_sim_axi_gpio_0_0.vhd" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_gpio_1_0/sim/demo2_led_sim_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_xbar_0/sim/demo2_led_sim_xbar_0.v" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_clk_wiz_0/demo2_led_sim_clk_wiz_0_clk_wiz.v" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_clk_wiz_0/demo2_led_sim_clk_wiz_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_rst_clk_wiz_100M_0/sim/demo2_led_sim_rst_clk_wiz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_ila_0_0/sim/demo2_led_sim_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/4e49" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/demo2_led_sim/ip/demo2_led_sim_auto_pc_0/sim/demo2_led_sim_auto_pc_0.v" \
"../../../bd/demo2_led_sim/sim/demo2_led_sim.v" \

vlog -work xil_defaultlib \
"glbl.v"

