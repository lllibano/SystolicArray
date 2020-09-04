create_clock -name clk -period 3.333 [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports clk]
create_clock -name clk2x -period 1.666 [get_ports clk2x]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk2x]