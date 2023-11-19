class mem_bfm;
//properties
mem_tx tx;

virtual mem_intf vif;
//method

function new();
	vif=top.pif;
endfunction

task run();
	forever begin
		tx=new();
		gen2bfm.get(tx);
		drive_tx(tx);
		tx.print("BFM");
		mem_common::bfm_count++;
	end
endtask

task drive_tx(mem_tx tx);
	@(vif.bfm_cb);
	vif.bfm_cb.valid <=1;
	vif.bfm_cb.wr_rd <=tx.wr_rd;
	vif.bfm_cb.addr <=tx.addr;
	if(tx.wr_rd == 1) vif.bfm_cb.wdata <=tx.data; //write transaction
	wait(vif.bfm_cb.ready == 1);
	@(vif.bfm_cb);
	if(tx.wr_rd == 0) tx.data=vif.bfm_cb.rdata;  //read transaction
	vif.bfm_cb.valid <=0;
	vif.bfm_cb.wr_rd <=0;
	vif.bfm_cb.addr <=0;
	vif.bfm_cb.wdata <=0;

endtask
endclass










	

