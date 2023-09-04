//CODE-1: Declaring. initializing. and using associative arrays 

module a_array;
int a_array[int]; //integer array with integer index

initial begin
	a_array = '{1:10, 2:20, 3:30, 4:50, 5:60};
	$display("associative array size=%0d",a_array.size());

	foreach(a_array[i])
        $display("\t a_array[%0d]=%0d",i,a_array[i]);
end
endmodule
		

