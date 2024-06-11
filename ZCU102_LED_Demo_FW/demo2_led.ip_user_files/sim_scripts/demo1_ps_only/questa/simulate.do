onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib demo1_ps_only_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {demo1_ps_only.udo}

run -all

quit -force
