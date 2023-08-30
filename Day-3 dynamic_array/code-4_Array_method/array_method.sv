//code-4 dynamic arrays methods example

module d_Array;
int Array[];
//int array1[];
initial begin
	Array = new[10];
	Array = '{5,10,15,25,30,42,56,87,23,43};
	foreach(Array[i]) begin
		$display("array[%0d]=%0d",i,Array[i]);
	end
		$display("\nsize of array=%0d",Array.size());

        Array = new[10];
		Array.delete(10);
		foreach(Array[i])begin
		end
			$display("\nvalue of array after delete=%0p",Array.size());
		
end
endmodule

