//CODE-3: example of array method

module a_array;
  
  bit [7:0] a_array [int];
  
  int b;
  
  initial
    begin
      a_array[5]=20;
      a_array[17]=2;
      a_array[1]=10;
      a_array[2]=21;
      a_array[4]=22;
      a_array[6]=23;
      
      $display("\nSize of associative array  is %0d",a_array.size());
      $display("Number of entries is %0d ",a_array.num());
      
      if(a_array.exists(4))
        $display("\nElement is exists at index = 7");
      else
        $display("Invalid Index");
      
      a_array.last(b);
      $display("\nLast index of array a_array is %0d ",b);
      
      a_array.first(b);
      $display("\nFirst index of array is %0d",b);
      
      b=2;
      a_array.next(b);
      $display("\nNext index of 2 is %0d",b);
      
      b=2;
      a_array.prev(b);
      $display("\nPrev index of 2 is %0d",b);
      
      a_array.delete(17);
      $display("\nArray a_array after deleting index 17");
      foreach(a_array[i])
        $display("\t a_array=[%0d]=%0d",i,a_array[i]);
        
    end
endmodule



