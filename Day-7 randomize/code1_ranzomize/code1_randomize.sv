//code1: Two variables addr1 and addr2 of same bit type are declared as rand and randc respectively, observe the randomized values of addr1 and addr2.

class pkt;
rand bit [2:0]addr1;
randc bit [2:0]addr2;
endclass

module top;
pkt pkt1;
initial begin
	pkt1 = new();
	repeat(10) begin
	pkt1.randomize();
		$display("\t addr1=%0d,\t addr2=%0d",pkt1.addr1,pkt1.addr2);
    end
end
endmodule
