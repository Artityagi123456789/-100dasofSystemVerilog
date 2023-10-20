`include "sample_pkt.sv"
`include "pkt_bfm.sv"
`include "pkt_gen.sv"
module top;
generator gen;
pkt_bfm bfm;
//mailbox mbox;

initial begin
	//mbox=new();

	gen=new();
	bfm=new();
	fork
	gen.run();
	bfm.run();
	join
end
endmodule
