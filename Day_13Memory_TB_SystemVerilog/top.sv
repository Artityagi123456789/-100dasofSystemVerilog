module top;
reg clk,rst;
//interface instantiation
mem_intf pif(clk, rst);

mem_env env;

memory #(.WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .DEPTH(DEPTH)) dut(
			.clk_i(pif.clk_i),
			.rst_i(pif.rst_i),
			.wdata_i(pif.wdata),
			.addr_i(pif.addr),
			.wr_rd_en_i(pif.wr_rd),
			.valid_i(pif.valid),
			.rdata_o(pif.rdata),
			.ready_o(pif.ready));

always #5 clk = ~clk;

initial begin
	clk=0;
	rst=1;
	rst_signal();
	repeat(2)@(posedge clk);
	//#20
	rst=0;
end

initial begin
	env=new();
	env.run();
end

initial begin
	#10;
	wait(mem_common::tx_count == mem_common::bfm_count);
	#100;
	$finish();
end

task rst_signal();
	pif.valid=0;
	pif.wr_rd=0;
	pif.addr=0;
	pif.wdata=0;
	
endtask
endmodule
