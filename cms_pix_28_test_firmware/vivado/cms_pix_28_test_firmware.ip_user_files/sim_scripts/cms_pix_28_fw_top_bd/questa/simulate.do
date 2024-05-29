onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cms_pix_28_fw_top_bd_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cms_pix_28_fw_top_bd.udo}

run -all

quit -force
