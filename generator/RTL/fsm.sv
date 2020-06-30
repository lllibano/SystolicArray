module fsm
#(
	parameter words = 2,
	parameter addressWidth = $clog2(words),
	parameter latency = 5+words, //5 = pipeline stages on PE + memory read delay
    parameter cycleCounterWidth = $clog2(latency+1)
)
(
    //clk, rst
	input logic clk,
	input logic rst,
    //global control
	input logic start,
	input logic interrupt,
	//axi inout
	output logic S_AXIS_TREADY,
	input logic S_AXIS_TVALID,
	input logic S_AXIS_TLAST,
	input logic M_AXIS_TREADY,
	output logic M_AXIS_TVALID,
	output logic M_AXIS_TLAST,
	//fillingInputMemoriesState
	output logic fillingInputMemories,
	output logic [addressWidth-1:0] abcWriteAddress,
	//loadingWeightsState
	output logic loadingWeights,
	output logic [addressWidth-1:0] cReadAddress,
	//runningState - inputs [mem -> array]
	output logic validInputs,
	output logic [addressWidth-1:0] abReadAddress,
	//runningState - outputs [array -> mem]
	output logic yzWriteEnable,
	output logic [addressWidth-1:0] yzWriteAddress,
	//runningState - inputs [mem -> outside]
	output logic [addressWidth-1:0] yzReadAddress
);

	typedef enum logic [1:0] {idleState=2'd0, fillingInputMemoriesState, loadingWeightsState, runningState} stateType;
	stateType currentState, nextState;
	dff #(2) state(clk, rst, nextState[1:0], currentState[1:0]);

    logic [addressWidth-1:0] abcWriteAddress_mux_out;
    logic [addressWidth-1:0] abcWriteAddress_dff_in;
    logic [addressWidth-1:0] abcWriteAddress_dff_out;
    dff #(addressWidth) dff_abcWriteAddress(clk, rst, abcWriteAddress_dff_in, abcWriteAddress_dff_out);
    assign abcWriteAddress = abcWriteAddress_dff_out;
    
    logic loadingWeights_dff_in;
    logic loadingWeights_dff_out;
    dff #(1) dff_loadingWeights(clk, rst, loadingWeights_dff_in, loadingWeights_dff_out);
    assign loadingWeights = loadingWeights_dff_out;
    logic [addressWidth-1:0] cReadAddress_dff_in;
    logic [addressWidth-1:0] cReadAddress_dff_out;
    dff #(addressWidth) dff_cReadAddress(clk, rst, cReadAddress_dff_in, cReadAddress_dff_out);
    assign cReadAddress = cReadAddress_dff_out;
    
    logic validInputs_dff_in;
    logic validInputs_dff_out;
    dff #(1) dff_validInputs(clk, rst, validInputs_dff_in, validInputs_dff_out);
    assign validInputs = validInputs_dff_out;
    logic [addressWidth-1:0] abReadAddress_dff_in;
    logic [addressWidth-1:0] abReadAddress_dff_out;
    dff #(addressWidth) dff_abReadAddress(clk, rst, abReadAddress_dff_in, abReadAddress_dff_out);
    assign abReadAddress = abReadAddress_dff_out;
    
    logic [cycleCounterWidth-1:0] cycleCounter_dff_in;
    logic [cycleCounterWidth-1:0] cycleCounter_dff_out;
    dff #(cycleCounterWidth) dff_cycleCounter(clk, rst, cycleCounter_dff_in, cycleCounter_dff_out);
    
    logic [addressWidth-1:0] yzWriteAddress_mux_out;
    logic [addressWidth-1:0] yzWriteAddress_dff_in;
    logic [addressWidth-1:0] yzWriteAddress_dff_out;
    dff #(addressWidth) dff_yzWriteAddress(clk, rst, yzWriteAddress_dff_in, yzWriteAddress_dff_out);
    assign yzWriteAddress = yzWriteAddress_dff_out;
    
    logic validOutputs_dff_in;
    logic validOutputs_dff_out_0;
    logic validOutputs_dff_out;
    dff #(1) dff_validOutputs_0(clk, rst, validOutputs_dff_in, validOutputs_dff_out_0);
    dff #(1) dff_validOutputs(clk, rst, validOutputs_dff_out_0, validOutputs_dff_out);
    
    logic [addressWidth-1:0] yzReadAddress_mux_out;
    logic [addressWidth-1:0] yzReadAddress_dff_in;
    logic [addressWidth-1:0] yzReadAddress_dff_out;
    dff #(addressWidth) dff_yzReadAddress(clk, rst, yzReadAddress_dff_in, yzReadAddress_dff_out);
    assign yzReadAddress = yzReadAddress_dff_out;

    always_comb begin
        //defaults
        abcWriteAddress_dff_in = {addressWidth{1'b0}};
        loadingWeights_dff_in = {1{1'b0}};
        cReadAddress_dff_in = {addressWidth{1'b0}};
        validInputs_dff_in = {1{1'b0}};
        abReadAddress_dff_in = {addressWidth{1'b0}};
        cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
        yzWriteAddress_dff_in = {addressWidth{1'b0}};
        validOutputs_dff_in = {1{1'b0}};
        yzReadAddress_dff_in = {addressWidth{1'b0}};
        fillingInputMemories = 1'b0;
        yzWriteEnable = 1'b0;
        S_AXIS_TREADY = 1'b0;
        M_AXIS_TVALID = 1'b0;
        M_AXIS_TLAST = 1'b0;
        //logic
        unique case(currentState)
            idleState: begin
                abcWriteAddress_dff_in = {addressWidth{1'b0}};
                loadingWeights_dff_in = {1{1'b0}};
                cReadAddress_dff_in = {addressWidth{1'b0}};
                validInputs_dff_in = {1{1'b0}};
                abReadAddress_dff_in = {addressWidth{1'b0}};
                cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
                yzWriteAddress_dff_in = {addressWidth{1'b0}};
                validOutputs_dff_in = {1{1'b0}};
                yzReadAddress_dff_in = {addressWidth{1'b0}};
                nextState = (start) ? (fillingInputMemoriesState):(idleState);
            end
            fillingInputMemoriesState: begin
                fillingInputMemories = 1'b1;
                S_AXIS_TREADY = 1'b1;
                abcWriteAddress_mux_out = (abcWriteAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(abcWriteAddress_dff_out + 1'b1);
                abcWriteAddress_dff_in = (S_AXIS_TVALID) ? (abcWriteAddress_mux_out):(abcWriteAddress_dff_out);
                nextState = (abcWriteAddress_dff_out == words-1) ? loadingWeightsState:fillingInputMemoriesState;
            end
            loadingWeightsState: begin
                fillingInputMemories = 1'b0;
                loadingWeights_dff_in = 1'b1;
                cReadAddress_dff_in = (cReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(cReadAddress_dff_out + 1'b1);
                nextState = (cReadAddress_dff_out == words-1) ? runningState:loadingWeightsState;
            end
            runningState: begin
                loadingWeights_dff_in = 1'b0;
                //inputs [mem -> array]
                validInputs_dff_in = 1'b1;
                abReadAddress_dff_in = (abReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(abReadAddress_dff_out + 1'b1);
                //outputs [array -> mem]
                cycleCounter_dff_in = (cycleCounter_dff_out == latency) ? (cycleCounter_dff_out):(cycleCounter_dff_out + 1'b1);              
                yzWriteEnable = (cycleCounter_dff_out == latency) ? 1'b1:1'b0;
                yzWriteAddress_mux_out = (yzWriteAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(yzWriteAddress_dff_out + 1'b1);
                yzWriteAddress_dff_in = (cycleCounter_dff_out == latency) ? (yzWriteAddress_mux_out):(yzWriteAddress_dff_out);
                //outputs [mem -> outside]
                M_AXIS_TVALID = ((validOutputs_dff_out) && (M_AXIS_TREADY)) ? (1'b1):(1'b0);
                M_AXIS_TLAST = ((validOutputs_dff_out) && (M_AXIS_TREADY)) ? (1'b1):(1'b0);
                validOutputs_dff_in = (cycleCounter_dff_out == latency) ? (1'b1):(1'b0);
                yzReadAddress_mux_out = (yzReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(yzReadAddress_dff_out + 1'b1);
                yzReadAddress_dff_in = ((validOutputs_dff_out_0) && (M_AXIS_TREADY)) ? (yzReadAddress_mux_out):(yzReadAddress_dff_out);
                nextState = (interrupt) ? (idleState):(runningState);
            end
        endcase
    end

endmodule