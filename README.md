# Libano's Systolic Array Generator
A parametric RTL code generator of an efficient integer MxM Systolic Array implementation for Xilinx FPGAs.

---

## Overview

In a systolic array, there is a rythmic style of computation, in which, at every clock cycle, input data is pumped in, and output data is pumped out.
The term *systolic* is therefore a reference to the functioning of a biological heart<sup>[[1]](https://books.google.com.br/books/about/Systolic_Arrays_for_VLSI.html?id=pAKfHAAACAAJ&redir_esc=y)</sup>.

There are a number of mathematical operations that can be implemented using systolic arrays, but the one in this project is a **weight stationary matrix multiplier**. Nowadays, systolic arrays are the architectural core of state-of-the-art neural network accelerators, such as Google's DPU<sup>[[2]](https://ieeexplore.ieee.org/abstract/document/8192463)</sup> and Xilinx's TPU<sup>[[3]](https://www.xilinx.com/support/documentation/ip_documentation/dpu/v3_1/pg338-dpu.pdf)</sup>.

This implementation uses 8-bit integer representation for the inputs, which allows for simultaneosly executing two multiplications in a single DSP<sup>[[4]](https://ieeexplore.ieee.org/document/8056863)</sup>. Furthermore, a time-multiplexing scheme is employed on the DSPs<sup>[[5]](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)</sup><sup>[[6]](https://www.xilinx.com/support/documentation/user_guides/ug579-ultrascale-dsp.pdf)</sup>, allowing them to run twice as fast as the rest of the logic. Thus, overall, each DSP is able to execute four 8-bit integer multiplications per clock cycle.
The adders responsible for accumulation are implemented with CLB<sup>[[7]](https://www.xilinx.com/support/documentation/user_guides/ug474_7Series_CLB.pdf)</sup><sup>[[8]](https://www.xilinx.com/support/documentation/user_guides/ug574-ultrascale-clb.pdf)</sup> elements, such as LUTs and CARRYs.

Hence, the Processing Elements (PEs) that constitute the array are multiply-accumulate (MAC) units.

![array-mem-pe](/docs/architecture.png)

---

## Resource Utilization & Performance

Given a systolic array of size NxN:
- **DSPs:** N<sup>2</sup> DSP48E[1<sup>[[5]](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)</sup>|2<sup>[[6]](https://www.xilinx.com/support/documentation/user_guides/ug579-ultrascale-dsp.pdf)</sup>] *(1 for each PE)*
- **BRAMs:** 6N RAMB18E[1<sup>[[9]](https://www.xilinx.com/support/documentation/user_guides/ug473_7Series_Memory_Resources.pdf)</sup>|2<sup>[[10]](https://www.xilinx.com/support/documentation/user_guides/ug573-ultrascale-memory-resources.pdf)</sup>] *(N for each input/output matrix: ABCD,E,W,X,Y,Z)*
- **Operations/Cycle:** 8N<sup>2</sup> *(N<sup>2</sup> PEs, 2x2xMUL + 4xADD per PE)*
- **Frequency:** Will mostly depend target device, but can also depend on N *(![/validation/](/validation/))*
	- 8x8/14x14 @ XC7Z020 @ 200MHz
	- 8x8/14x14/32x32 @ XCZU9 @ 300MHz

![testbench](/docs/testbench.png)

---

## Repository Organization

- ![/docs/](/docs/): Relevant repository documentation.
- ![/example/](/example/): Vivado project for a 2x2 array, including testbenches, and an use-case scenario with AXI DMA.
- ![/generator/](/generator/): Python script for generating RTL (edit 'settings.py', run 'main.py', import '/RTL/import_me/*').
- ![/validation/](/validation/): OOC Vivado projects, scripts, and reports for synth/place/route of 8x8/14x14/32x32 arrays on 7000/UltraScale.

---

## References

- [<sup>[1]</sup>H. T. Kung et al., "Systolic Arrays (for VLSI)"](https://books.google.com.br/books/about/Systolic_Arrays_for_VLSI.html?id=pAKfHAAACAAJ&redir_esc=y)
- [<sup>[2]</sup>N. P. Jouppi et al., "In-Datacenter Perfomance Analysis of a Tensor Processing Unit"](https://ieeexplore.ieee.org/abstract/document/8192463)
- [<sup>[3]</sup>Xilinx, "Zynq DPU Product Guide"](https://www.xilinx.com/support/documentation/ip_documentation/dpu/v3_1/pg338-dpu.pdf)
- [<sup>[4]</sup>M. Vestias et al., "Parallel Dot-Products for Deep Learning on FPGA"](https://ieeexplore.ieee.org/document/8056863)
- [<sup>[5]</sup>Xilinx, "7 Series DSP48E1 Slice User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)
- [<sup>[6]</sup>Xilinx, "UltraScale Architecture DSP Slice User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug579-ultrascale-dsp.pdf)
- [<sup>[7]</sup>Xilinx, "7 Series Configurable Logic Block User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug474_7Series_CLB.pdf)
- [<sup>[8]</sup>Xilinx, "UltraScale Architecture Configurable Logic Block User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug574-ultrascale-clb.pdf)
- [<sup>[9]</sup>Xilinx, "7 Series FPGAs Memory Resources"](https://www.xilinx.com/support/documentation/user_guides/ug473_7Series_Memory_Resources.pdf)
- [<sup>[10]</sup>Xilinx, "UltraScale Architecture Memory Resources"](https://www.xilinx.com/support/documentation/user_guides/ug573-ultrascale-memory-resources.pdf)

---

## Extras
![systolic-demo](/docs/demo.gif)
