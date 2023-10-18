module top;
semaphore sem = new();
initial begin
	#5;
	$display("%0t Process1 write to the memory",$time);
	write_mem();
	$display("%0t Process1 completed writing to the memory",$time);
end

initial begin 
	#2;
	$display("%0t Process2 write to the memory",$time);
	write_mem();
	$display("%0t Process2 completed writing to the memory",$time);
end

task write_mem();
#20;
endtask
endmodule
	
