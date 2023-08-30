//Code-3 Resize the first array element and print contents using %p.

module d_array;
bit[4:0] d_array[];

initial begin
	d_array = new[5];
	foreach(d_array[i])begin
	d_array[i] = $urandom_range(10,15);
	end
		$display("\ndynamic array while retaining the existing 5 elements is =%p",d_array);
		 $display("\nInceasing the size of array old value ");
		d_array = new[10];
		foreach(d_array[i])begin
     	d_array[i] = $urandom_range(20,30);
	end
		$display("\ndynamic array value after resize array is =%p",d_array);

end
endmodule

