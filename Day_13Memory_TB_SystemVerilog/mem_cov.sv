class mem_cov;
	mem_tx tx;

	covergroup cg;
		WR_RD:coverpoint tx.wr_rd
		{
			bins WRITE = {1'b1};
			bins READ = {1'b0};
		}

		ADDR:coverpoint tx.addr
		{
		//option.auto_bin_max=8;
			bins b1 = {[7:0]};
			bins b2 = {[15:8]};
			bins b3 = {[23:16]};
			bins b4 = {[31:24]};
			bins b5 = {[47:32]};
			bins b6 = {[55:48]};
			bins b7 = {[63:56]};
			bins b8 = {[63:56]};
			
		}

	endgroup

	function new();
		cg=new();
	endfunction	

	task run();
		forever begin
			tx=new();
			mon2cov.get(tx);
			cg.sample();
		end
	endtask	
endclass
