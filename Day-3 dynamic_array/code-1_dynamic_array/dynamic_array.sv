module tb;
int array[];
initial begin
	array = new[10];
        array[2] = 5;
  
	foreach(array[i]) begin
      $display("array[%0d]=%0d",i,array[i]);
    end
	$display("\narray=%p",array);  //array in packed formate
 	
end
endmodule
