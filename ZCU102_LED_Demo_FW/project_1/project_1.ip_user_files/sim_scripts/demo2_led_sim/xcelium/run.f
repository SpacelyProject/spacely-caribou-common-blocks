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
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_vip_0_0/sim/demo2_led_sim_axi_vip_0_0_pkg.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_vip_0_0/sim/demo2_led_sim_axi_vip_0_0.sv" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_28 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_gpio_0_0/sim/demo2_led_sim_axi_gpio_0_0.vhd" \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_axi_gpio_1_0/sim/demo2_led_sim_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_xbar_0/sim/demo2_led_sim_xbar_0.v" \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_clk_wiz_0/demo2_led_sim_clk_wiz_0_clk_wiz.v" \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_clk_wiz_0/demo2_led_sim_clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_rst_clk_wiz_100M_0/sim/demo2_led_sim_rst_clk_wiz_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_ila_0_0/sim/demo2_led_sim_ila_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../demo2_led.gen/sources_1/bd/demo2_led_sim/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/demo2_led_sim/ip/demo2_led_sim_auto_pc_0/sim/demo2_led_sim_auto_pc_0.v" \
  "../../../bd/demo2_led_sim/sim/demo2_led_sim.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

