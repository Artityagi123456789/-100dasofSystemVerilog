module top;
semaphore smp =new(4);

initial begin
fork
	display(); //"process1"
	display(); //"process2"
	display(); //"process2"
	
join	
end

task display();
	
	smp.get(2);
	$display("%0t current simulation time",$time);
	#30;
	smp.put(2);
endtask
endmodule
