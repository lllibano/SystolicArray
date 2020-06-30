`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_top
#(
	parameter arraySize = 2,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = $clog2(arraySize),
	parameter s_axi_tdata_width = arraySize*inputBits*3 + 16,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*2 + 0,
	parameter m_axi_tkeep_width = m_axi_tdata_width/8
)
();

    //CLK, RST
	logic clk;
	logic rst;
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
    always #10000 clk = ~clk;
    
    top #(arraySize, inputBits, outputBits, addressWidth, 
          s_axi_tdata_width, s_axi_tkeep_width, 
          m_axi_tdata_width, m_axi_tkeep_width) 
        top(clk, rst, 
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
        S_AXIS_TDATA <= 64'h0000080702010201;
        S_AXIS_TKEEP <= 8'hFF;
        S_AXIS_TLAST <= 1'b0;
        S_AXIS_TVALID <= 1'b1;
        M_AXIS_TREADY <= 1'b1;
        @(posedge clk);
        S_AXIS_TDATA <= 64'h0000060504030403;
        S_AXIS_TKEEP <= 8'hFF;
        S_AXIS_TLAST <= 1'b1;
        S_AXIS_TVALID <= 1'b1;
        M_AXIS_TREADY <= 1'b1;
        @(posedge clk);
    end
    
endmodule