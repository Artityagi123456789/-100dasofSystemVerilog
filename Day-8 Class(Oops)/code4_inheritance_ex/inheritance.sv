class packet;
	bit [31:0]addr;
endclass

class packet1 extends packet;
	bit[31:0]data;
endclass

module top;
initial begin
	packet1 pkt=new();
	pkt.addr=50;
	pkt.data=30;
	$display("value of addr=%0d data=%0d",pkt.addr,pkt.data);
end
endmodule
