module top;
reg clk,rst;
//interface instantiation
mem_intf pif(clk, rst);

mem_env env;

memory #(.WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH), .DEPTH(DEPTH)) dut(.clk_i(pif.clk_i),
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
	#20;
	rst=0;
end

initial begin
	env=new();
	env.run();
end

initial begin
	#500;
	$finish();
end
endmodule
