`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_top
#(
	parameter arraySize = 2,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = $clog2(arraySize),
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 48,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*4 + 0,
	parameter m_axi_tkeep_width = m_axi_tdata_width/8
)
();

    //CLK, RST
	logic clk;
	logic rst;
	logic clk2x;
	//Global Control
	logic start;
	logic interrupt;
	//AXIS Slave Port
	logic [s_axi_tdata_width-1:0] S_AXIS_TDATA;
	logic [s_axi_tkeep_width-1:0] S_AXIS_TKEEP;
	logic S_AXIS_TLAST;
	logic S_AXIS_TVALID;
	logic S_AXIS_TREADY;
	//AXIS Master Port
	logic [m_axi_tdata_width-1:0] M_AXIS_TDATA;
	logic [m_axi_tkeep_width-1:0] M_AXIS_TKEEP;
	logic M_AXIS_TLAST;
	logic M_AXIS_TVALID;
	logic M_AXIS_TREADY;
    
    initial clk = 0;
    always #1000 clk = ~clk;
    initial clk2x = 1;
    always #500 clk2x = ~clk2x;
    
    top #(arraySize, inputBits, outputBits, addressWidth, 
          s_axi_tdata_width, s_axi_tkeep_width, 
          m_axi_tdata_width, m_axi_tkeep_width) 
        top(clk, rst, clk2x,
            start, interrupt, 
            S_AXIS_TDATA, S_AXIS_TKEEP, S_AXIS_TLAST, S_AXIS_TVALID, S_AXIS_TREADY,
            M_AXIS_TDATA, M_AXIS_TKEEP, M_AXIS_TLAST, M_AXIS_TVALID, M_AXIS_TREADY);
    
    initial begin
        @(posedge clk);
        start <= 1'b0;
        interrupt <= 1'b0;
        rst <= 0;
        @(posedge clk);
        rst <= 1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        rst <= 0;
        @(posedge clk);
        start <= 1;
        @(posedge clk);
        S_AXIS_TDATA <= 128'h000000000000_08070201020102010201;
        S_AXIS_TKEEP <= 16'hFFFF;
        S_AXIS_TLAST <= 1'b0;
        S_AXIS_TVALID <= 1'b1;
        M_AXIS_TREADY <= 1'b1;
        @(posedge clk);
        S_AXIS_TDATA <= 128'h000000000000_06050403040304030403;
        S_AXIS_TKEEP <= 16'hFFFF;
        S_AXIS_TLAST <= 1'b1;
        S_AXIS_TVALID <= 1'b1;
        M_AXIS_TREADY <= 1'b1;
        @(posedge clk);
    end
    
endmodule