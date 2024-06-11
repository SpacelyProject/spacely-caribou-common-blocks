onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+demo1_ps_only -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.demo1_ps_only xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {demo1_ps_only.udo}

run -all

endsim

quit -force
