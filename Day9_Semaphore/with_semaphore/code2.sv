module top;
semaphore smp =new(1);

initial begin
	#5;
	smp.get(1);
	$display("%0t process1 wtite to mem",$time);
	write_mem();
	$display("%0t process1 completed wtite to mem",$time);
	smp.put(1);
end

initial begin
	#2;
	smp.get(1);
	$display("%0t process2 wtiteing to mem",$time);
	write_mem();
	$display("%0t process2 completed wtite to mem",$time);
	smp.put(1);
end



task write_mem();
#20;
endtask
endmodule

