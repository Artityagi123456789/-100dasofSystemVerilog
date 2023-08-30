module dynamic_array;
int D_array[];

initial begin
	D_array = new[10];
	 D_array = '{1,2,4,5,7,6,8,9,3,4};
	foreach(D_array[i])
        begin
          $display("Value of dynamic array[%0d]=[%0d]",i,D_array[i]);
        end
          $display("\nValue of dynamic array=%p",D_array);
		
    end
endmodule

	 
