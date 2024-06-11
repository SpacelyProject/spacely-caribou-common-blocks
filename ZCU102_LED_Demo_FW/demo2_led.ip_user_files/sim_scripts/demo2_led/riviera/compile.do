vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/zynq_ultra_ps_e_vip_v1_0_12
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_28
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_28
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_crossbar_v2_1_27
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/jtag_axi
vlib riviera/gigantic_mux
vlib riviera/xlconcat_v2_1_4
vlib riviera/axi_protocol_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 riviera/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_28 riviera/axi_timer_v2_0_28
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 riviera/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 riviera/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap jtag_axi riviera/jtag_axi
vmap gigantic_mux riviera/gigantic_mux
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26

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

vlog -work xpm  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -sv2k12 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_zynq_ultra_ps_e_0_0/sim/demo2_led_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_28 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_timer_0_0/sim/demo2_led_axi_timer_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_gpio_0_0/sim/demo2_led_axi_gpio_0_0.vhd" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_gpio_0_1/sim/demo2_led_axi_gpio_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_xbar_0/sim/demo2_led_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_rst_ps8_0_99M_0/sim/demo2_led_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_ila_0_0/sim/demo2_led_ila_0_0.v" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/7ec7/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_jtag_axi_0_0/sim/demo2_led_jtag_axi_0_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/sim/bd_c1e7.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_0/sim/bd_c1e7_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_1/bd_c1e7_g_inst_0_gigantic_mux.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_1/sim/bd_c1e7_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_2/sim/bd_c1e7_slot_0_aw_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_3/sim/bd_c1e7_slot_0_w_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_4/sim/bd_c1e7_slot_0_b_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_5/sim/bd_c1e7_slot_0_ar_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_6/sim/bd_c1e7_slot_0_r_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/sim/demo2_led_system_ila_0_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/sim/demo2_led.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1b7e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/122e/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b205/hdl/verilog" "+incdir+../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/fd26/hdl/verilog" "+incdir+/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_auto_pc_0/sim/demo2_led_auto_pc_0.v" \
"../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_auto_pc_1/sim/demo2_led_auto_pc_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

