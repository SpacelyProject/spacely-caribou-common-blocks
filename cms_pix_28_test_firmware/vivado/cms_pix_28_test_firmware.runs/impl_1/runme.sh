#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/asic/cad/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/asic/cad/Xilinx/Vivado/2022.1/bin
else
  PATH=/asic/cad/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/asic/cad/Xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/asic/projects/C/CMS_PIX_28/gingu/spacely/spacely-caribou-common-blocks/cms_pix_28_test_firmware/vivado/cms_pix_28_test_firmware.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log cms_pix_28_fw_top_bd_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source cms_pix_28_fw_top_bd_wrapper.tcl -notrace


