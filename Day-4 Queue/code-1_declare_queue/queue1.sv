//Code-1 if Queue has n elements 

module queue;
string queue1[$];
initial begin
	queue1={"apple","cat","orange","Rat","cow"};
	foreach(queue1[i]) begin
		$display("\tqueue1[%0d]=%0d",i,queue1[i]);
		end
		$display("\nqueue1=%p",queue1); //in packed formate
		

end
endmodule
