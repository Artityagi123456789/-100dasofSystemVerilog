class pkt_bfm;
sample_pkt pkt;
//mailbox mbox;
//
//function new(mailbox mbox);
//	this.mbox=mbox;
//endfunction	

task run();
	repeat(2)begin
	mbox.get(pkt);
		$display("bfm::packet get from mailbox");
		$display("packet:: addr=%0d,Data=%0d",pkt.addr,pkt.data);
		#10;	
	end		
endtask
endclass
	
