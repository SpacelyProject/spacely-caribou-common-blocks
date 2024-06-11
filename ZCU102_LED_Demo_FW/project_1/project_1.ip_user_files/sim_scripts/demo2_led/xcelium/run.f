-makelib xcelium_lib/xilinx_vip -sv \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/asic/cad/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_12 -sv \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_zynq_ultra_ps_e_0_0/sim/demo2_led_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_28 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_timer_0_0/sim/demo2_led_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_28 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_gpio_0_0/sim/demo2_led_axi_gpio_0_0.vhd" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_axi_gpio_0_1/sim/demo2_led_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_xbar_0/sim/demo2_led_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_rst_ps8_0_99M_0/sim/demo2_led_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_ila_0_0/sim/demo2_led_ila_0_0.v" \
-endlib
-makelib xcelium_lib/jtag_axi \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/7ec7/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_jtag_axi_0_0/sim/demo2_led_jtag_axi_0_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/sim/bd_c1e7.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_0/sim/bd_c1e7_ila_lib_0.v" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_1/bd_c1e7_g_inst_0_gigantic_mux.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_1/sim/bd_c1e7_g_inst_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_2/sim/bd_c1e7_slot_0_aw_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_3/sim/bd_c1e7_slot_0_w_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_4/sim/bd_c1e7_slot_0_b_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_5/sim/bd_c1e7_slot_0_ar_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/bd_0/ip/ip_6/sim/bd_c1e7_slot_0_r_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_system_ila_0_0/sim/demo2_led_system_ila_0_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/sim/demo2_led.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_auto_pc_0/sim/demo2_led_auto_pc_0.v" \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led/ip/demo2_led_auto_pc_1/sim/demo2_led_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

