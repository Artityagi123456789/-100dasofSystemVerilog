
mailbox mbox=new();
class generator;
sample_pkt pkt;

task run();
		repeat(2)begin
		pkt = new();
		pkt.randomize();
		mbox.put(pkt);
		$display("generator::packet put into mailbox");
		#5;
		end
endtask		
endclass
