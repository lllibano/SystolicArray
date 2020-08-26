# Libano's Systolic Array Generator
A parametric RTL code generator of an efficient MxM Systolic Array implementation for Xilinx FPGAs.

---

## Overview

In a systolic array, there is a rythmic style of computation, in which, at every clock cycle, input data is pumped in, and output data is pumped out.
The term *systolic* is therefore a reference to the functioning of a biological heart<sup>[[1]](https://books.google.com.br/books/about/Systolic_Arrays_for_VLSI.html?id=pAKfHAAACAAJ&redir_esc=y)</sup>.

There are a number of mathematical operations that can be implemented using systolic arrays, but the one in this project is a **weight stationary matrix multiplier**. Nowadays, systolic arrays are the architectural core of state-of-the-art neural network accelerators, such as Google's DPU<sup>[[2]](https://ieeexplore.ieee.org/abstract/document/8192463)</sup> and Xilinx's TPU<sup>[[3]](https://www.xilinx.com/support/documentation/ip_documentation/dpu/v3_1/pg338-dpu.pdf)</sup>.

This implementation uses 8-bit integer representation for the inputs, which allows for simultaneosly executing two multiplications in a single DSP<sup>[[4]](https://ieeexplore.ieee.org/document/8056863)</sup>. Furthermore, a time-multiplexing scheme is employed on the DSPs<sup>[[5]](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)</sup>, allowing them to run twice as fast as the rest of the logic. Thus, overall, each DSP is able to execute four 8-bit integer multiplications per clock cycle.
The adders responsible for accumulation are implemented with CLB elements, such as LUTs and CARRY4s.

Hence, the Processing Elements (PEs) that constitute the array are multiply-accumulate (MAC) units.

![array-mem-pe](/docs/architecture.png)

---

## Resource Utilization & Performance

Given a systolic array of size NxN:
- **DSPs:** N<sup>2</sup> DSP48E1<sup>[[5]](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)</sup> *(can easily be adapted to work with DSP48E2)*
- **BRAMs:** 9N RAMB18E1<sup>[[6]](https://www.xilinx.com/support/documentation/user_guides/ug473_7Series_Memory_Resources.pdf)</sup> *(N for each input/output matrix: A,B,C,D,E,W,X,Y,Z)*
- **Operations/Cycle:** 8N<sup>2</sup> *(N<sup>2</sup> PEs, 2x2xMUL + 4xADD per PE)*
- **Frequency:** Will depend on N and target device *(an 8x8 easily meets timing on a XC7Z020 @ 150MHz)*

![testbench](/docs/testbench.png)

---

## Repository Organization

- ![/generator/](/generator/): Python script for generating RTL (edit 'settings.py', and then run 'main.py').
- ![/example/](/example/): Vivado project with a working example, and testbenches for a 2x2 array.
- ![/docs/](/docs/): Relevant project documentation.

---

## References

- [<sup>[1]</sup>H. T. Kung et al., "Systolic Arrays (for VLSI)"](https://books.google.com.br/books/about/Systolic_Arrays_for_VLSI.html?id=pAKfHAAACAAJ&redir_esc=y)
- [<sup>[2]</sup>N. P. Jouppi et al., "In-Datacenter Perfomance Analysis of a Tensor Processing Unit"](https://ieeexplore.ieee.org/abstract/document/8192463)
- [<sup>[3]</sup>Xilinx, "Zynq DPU Product Guide"](https://www.xilinx.com/support/documentation/ip_documentation/dpu/v3_1/pg338-dpu.pdf)
- [<sup>[4]</sup>M. Vestias et al., "Parallel Dot-Products for Deep Learning on FPGA"](https://ieeexplore.ieee.org/document/8056863)
- [<sup>[5]</sup>Xilinx, "7 Series DSP48E1 Slice User Guide"](https://www.xilinx.com/support/documentation/user_guides/ug479_7Series_DSP48E1.pdf)
- [<sup>[6]</sup>Xilinx, "7 Series FPGAs Memory Resources"](https://www.xilinx.com/support/documentation/user_guides/ug473_7Series_Memory_Resources.pdf)

---

## Extras
![systolic-demo](/docs/demo.gif)
