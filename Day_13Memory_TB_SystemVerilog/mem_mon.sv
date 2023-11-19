class mem_mon;
	mem_tx tx;
	virtual mem_intf vif;

	function new();
		vif=top.pif;
	endfunction

	task run();
		forever begin
			@(vif.mon_cb);
			if(vif.mon_cb.valid==1 && vif.mon_cb.ready==1)begin
					tx=new();
					tx.wr_rd = vif.mon_cb.wr_rd;
					tx.addr = vif.mon_cb.addr;
					if(vif.mon_cb.wr_rd==1) tx.data=vif.mon_cb.wdata;
					else tx.data=vif.mon_cb.rdata;
					mon2cov.put(tx);
					tx.print("MON");
			end
		end
	endtask
endclass	
