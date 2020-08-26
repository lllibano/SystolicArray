module fsm
#(
	parameter words = 2,
	parameter addressWidth = $clog2(words),
	parameter latency = 6+words, //6 = pipeline stages on PE + memory read delay
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
	output logic [addressWidth-1:0] abcdeWriteAddress,
	//loadingWeightsState
	output logic loadingWeights,
	output logic [addressWidth-1:0] eReadAddress,
	//runningState - inputs [mem -> array]
	output logic validInputs,
	output logic [addressWidth-1:0] abcdReadAddress,
	//runningState - outputs [array -> mem]
	output logic wxyzWriteEnable,
	output logic [addressWidth-1:0] wxyzWriteAddress,
	//runningState - inputs [mem -> outside]
	output logic [addressWidth-1:0] wxyzReadAddress
);

	typedef enum logic [1:0] {idleState=2'd0, fillingInputMemoriesState, loadingWeightsState, runningState} stateType;
	stateType currentState, nextState;
	dff #(2) state(clk, rst, nextState[1:0], currentState[1:0]);

    logic [addressWidth-1:0] abcdeWriteAddress_mux_out;
    logic [addressWidth-1:0] abcdeWriteAddress_dff_in;
    logic [addressWidth-1:0] abcdeWriteAddress_dff_out;
    dff #(addressWidth) dff_abcdeWriteAddress(clk, rst, abcdeWriteAddress_dff_in, abcdeWriteAddress_dff_out);
    assign abcdeWriteAddress = abcdeWriteAddress_dff_out;
    
    logic loadingWeights_dff_in;
    logic loadingWeights_dff_out;
    dff #(1) dff_loadingWeights(clk, rst, loadingWeights_dff_in, loadingWeights_dff_out);
    assign loadingWeights = loadingWeights_dff_out;
    logic [addressWidth-1:0] eReadAddress_dff_in;
    logic [addressWidth-1:0] eReadAddress_dff_out;
    dff #(addressWidth) dff_eReadAddress(clk, rst, eReadAddress_dff_in, eReadAddress_dff_out);
    assign eReadAddress = eReadAddress_dff_out;
    
    logic validInputs_dff_in;
    logic validInputs_dff_out;
    dff #(1) dff_validInputs(clk, rst, validInputs_dff_in, validInputs_dff_out);
    assign validInputs = validInputs_dff_out;
    logic [addressWidth-1:0] abcdReadAddress_dff_in;
    logic [addressWidth-1:0] abcdReadAddress_dff_out;
    dff #(addressWidth) dff_abcdReadAddress(clk, rst, abcdReadAddress_dff_in, abcdReadAddress_dff_out);
    assign abcdReadAddress = abcdReadAddress_dff_out;
    
    logic [cycleCounterWidth-1:0] cycleCounter_dff_in;
    logic [cycleCounterWidth-1:0] cycleCounter_dff_out;
    dff #(cycleCounterWidth) dff_cycleCounter(clk, rst, cycleCounter_dff_in, cycleCounter_dff_out);
    
    logic [addressWidth-1:0] wxyzWriteAddress_mux_out;
    logic [addressWidth-1:0] wxyzWriteAddress_dff_in;
    logic [addressWidth-1:0] wxyzWriteAddress_dff_out;
    dff #(addressWidth) dff_wxyzWriteAddress(clk, rst, wxyzWriteAddress_dff_in, wxyzWriteAddress_dff_out);
    assign wxyzWriteAddress = wxyzWriteAddress_dff_out;
    
    logic validOutputs_dff_in;
    logic validOutputs_dff_out_0;
    logic validOutputs_dff_out;
    dff #(1) dff_validOutputs_0(clk, rst, validOutputs_dff_in, validOutputs_dff_out_0);
    dff #(1) dff_validOutputs(clk, rst, validOutputs_dff_out_0, validOutputs_dff_out);
    
    logic [addressWidth-1:0] wxyzReadAddress_mux_out;
    logic [addressWidth-1:0] wxyzReadAddress_dff_in;
    logic [addressWidth-1:0] wxyzReadAddress_dff_out;
    dff #(addressWidth) dff_wxyzReadAddress(clk, rst, wxyzReadAddress_dff_in, wxyzReadAddress_dff_out);
    assign wxyzReadAddress = wxyzReadAddress_dff_out;

    always_comb begin
        //defaults
        abcdeWriteAddress_dff_in = {addressWidth{1'b0}};
        loadingWeights_dff_in = {1{1'b0}};
        eReadAddress_dff_in = {addressWidth{1'b0}};
        validInputs_dff_in = {1{1'b0}};
        abcdReadAddress_dff_in = {addressWidth{1'b0}};
        cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
        wxyzWriteAddress_dff_in = {addressWidth{1'b0}};
        validOutputs_dff_in = {1{1'b0}};
        wxyzReadAddress_dff_in = {addressWidth{1'b0}};
        fillingInputMemories = 1'b0;
        wxyzWriteEnable = 1'b0;
        S_AXIS_TREADY = 1'b0;
        M_AXIS_TVALID = 1'b0;
        M_AXIS_TLAST = 1'b0;
        //logic
        unique case(currentState)
            idleState: begin
                abcdeWriteAddress_dff_in = {addressWidth{1'b0}};
                loadingWeights_dff_in = {1{1'b0}};
                eReadAddress_dff_in = {addressWidth{1'b0}};
                validInputs_dff_in = {1{1'b0}};
                abcdReadAddress_dff_in = {addressWidth{1'b0}};
                cycleCounter_dff_in = {cycleCounterWidth{1'b0}};
                wxyzWriteAddress_dff_in = {addressWidth{1'b0}};
                validOutputs_dff_in = {1{1'b0}};
                wxyzReadAddress_dff_in = {addressWidth{1'b0}};
                nextState = (start) ? (fillingInputMemoriesState):(idleState);
            end
            fillingInputMemoriesState: begin
                fillingInputMemories = 1'b1;
                S_AXIS_TREADY = 1'b1;
                abcdeWriteAddress_mux_out = (abcdeWriteAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(abcdeWriteAddress_dff_out + 1'b1);
                abcdeWriteAddress_dff_in = (S_AXIS_TVALID) ? (abcdeWriteAddress_mux_out):(abcdeWriteAddress_dff_out);
                nextState = (abcdeWriteAddress_dff_out == words-1) ? loadingWeightsState:fillingInputMemoriesState;
            end
            loadingWeightsState: begin
                fillingInputMemories = 1'b0;
                loadingWeights_dff_in = 1'b1;
                eReadAddress_dff_in = (eReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(eReadAddress_dff_out + 1'b1);
                nextState = (eReadAddress_dff_out == words-1) ? runningState:loadingWeightsState;
            end
            runningState: begin
                loadingWeights_dff_in = 1'b0;
                //inputs [mem -> array]
                validInputs_dff_in = 1'b1;
                abcdReadAddress_dff_in = (abcdReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(abcdReadAddress_dff_out + 1'b1);
                //outputs [array -> mem]
                cycleCounter_dff_in = (cycleCounter_dff_out == latency) ? (cycleCounter_dff_out):(cycleCounter_dff_out + 1'b1);              
                wxyzWriteEnable = (cycleCounter_dff_out == latency) ? 1'b1:1'b0;
                wxyzWriteAddress_mux_out = (wxyzWriteAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(wxyzWriteAddress_dff_out + 1'b1);
                wxyzWriteAddress_dff_in = (cycleCounter_dff_out == latency) ? (wxyzWriteAddress_mux_out):(wxyzWriteAddress_dff_out);
                //outputs [mem -> outside]
                M_AXIS_TVALID = ((validOutputs_dff_out) && (M_AXIS_TREADY)) ? (1'b1):(1'b0);
                M_AXIS_TLAST = ((validOutputs_dff_out) && (M_AXIS_TREADY)) ? (1'b1):(1'b0);
                validOutputs_dff_in = (cycleCounter_dff_out == latency) ? (1'b1):(1'b0);
                wxyzReadAddress_mux_out = (wxyzReadAddress_dff_out == words-1) ? ({addressWidth{1'b0}}):(wxyzReadAddress_dff_out + 1'b1);
                wxyzReadAddress_dff_in = ((validOutputs_dff_out_0) && (M_AXIS_TREADY)) ? (wxyzReadAddress_mux_out):(wxyzReadAddress_dff_out);
                nextState = (interrupt) ? (idleState):(runningState);
            end
        endcase
    end

endmodule