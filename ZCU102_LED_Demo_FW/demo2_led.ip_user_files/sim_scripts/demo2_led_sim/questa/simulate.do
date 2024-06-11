onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib demo2_led_sim_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {demo2_led_sim.udo}

run -all

quit -force
