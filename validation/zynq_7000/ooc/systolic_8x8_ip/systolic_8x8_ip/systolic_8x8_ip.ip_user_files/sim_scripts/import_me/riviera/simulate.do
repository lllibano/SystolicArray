onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dsp_macro -L xilinx_vip -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_9 -L xbip_pipe_v3_0_5 -L xbip_dsp48_macro_v3_0_16 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dsp_macro xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dsp_macro.udo}

run -all

endsim

quit -force
