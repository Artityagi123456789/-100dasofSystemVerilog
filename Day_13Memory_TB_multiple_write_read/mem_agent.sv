class mem_agent;

mem_gen gen;
mem_bfm bfm;

function new();
	 	gen=new();
		bfm=new();
endfunction

task run();
	fork
		gen.run();
		bfm.run();
	join
endtask

endclass

