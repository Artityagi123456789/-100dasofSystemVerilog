//CODE-2: Using an associative array with a string index

module a_array;
int a_array1[string]; //integer array with string index
string a_array2[string]; //string array with string index

initial begin
		a_array1 = '{"maths":10, "chem":18, "phy":21,"eng":15};
				 $display("\n Size of a_array1 is %0d ",a_array1.size());      
    	  foreach(a_array1[i])
      		  $display(" a_array1[%0d]=%0d",i,a_array1[i]);

		a_array2 = '{"Name":"Arti", "sub":"SV", "year":"2023"};
			 $display("\n Size of a_array2 is %0d ",a_array2.size());      
     	 foreach(a_array2[i])
       		 $display(" a_array2[%0d]=%0d",i,a_array2[i]);
end
endmodule




