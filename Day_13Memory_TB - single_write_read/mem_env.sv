class mem_env;

mem_agent agent;

function new();
	agent=new();
endfunction

task run();
	agent.run();
endtask
endclass
