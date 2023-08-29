//Code-1 Array method

module top;
int array1[9:0];
int array2[9:0];
int array3[9:0];
int array4[9:0];

initial begin
	 array1='{0,1,2,3,4,5,6,7,8,9};
	 array1='{10,15,20,30,40,50,60,70,80,90};
	 array1='{0,1,2,3,4,5,6,7,8,9};
	 array1='{5,6,7,8,9,10,11,12,13,14};
end
	 $display("Reverse_Method");
      $display("\t value Before Reverse: %p",array1);
      array1.reverse();
      $display("\t value After Reverse: %p \n",array1);

       $display("sort_Method");
      $display("\t value Before sort: %p",array1);
      array1.sort();
      $display("\t value After sort: %p \n",array1);
      $display("Shuffle_method");
      $display("\t value Before shuffle: %p",array1);
      array1.shuffle();
      $display("\t value After shuffle: %p \n",array1);
      


      
endmodule	 
      
