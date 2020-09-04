create_clock -name clk -period 5 [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports clk]
create_clock -name clk2x -period 2.5 [get_ports clk2x]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk2x]