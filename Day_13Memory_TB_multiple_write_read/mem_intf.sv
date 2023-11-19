
interface mem_intf(input reg clk_i,rst_i);
parameter DEPTH = 64;
parameter WIDTH = 16;
parameter ADDR_WIDTH = $clog2(DEPTH); //this will calculate automatically 4
logic wr_rd;
logic valid;
logic [WIDTH-1:0]wdata;
logic [ADDR_WIDTH-1:0]addr;
logic ready;
logic [WIDTH-1:0]rdata;

clocking bfm_cb@(posedge clk_i);
	default input #0 output #1; //default skew
	//input to bfm
	input ready;
	input rdata;
	//output from bfm
	output valid;
	output wr_rd;
	output addr; 
	output wdata;
endclocking	
endinterface
