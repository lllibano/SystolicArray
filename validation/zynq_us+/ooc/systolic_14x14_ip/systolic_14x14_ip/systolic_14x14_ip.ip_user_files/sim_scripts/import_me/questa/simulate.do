onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dsp_macro_opt

do {wave.do}

view wave
view structure
view signals

do {dsp_macro.udo}

run -all

quit -force
