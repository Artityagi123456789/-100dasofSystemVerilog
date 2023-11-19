class mem_agent;

mem_gen gen;
mem_bfm bfm;
mem_mon mon;
mem_cov cov;
function new();
	 	gen=new();
		bfm=new();
		cov=new();	
		mon=new();
		
endfunction

task run();
	fork
		gen.run();
		bfm.run();
		cov.run();			
		mon.run();
	join
endtask

endclass

