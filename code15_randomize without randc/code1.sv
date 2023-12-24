//You have an array , int array[6:10] Randomize array between 1 to 20 without using randc.
module tb;
  int array[6:10];
 integer i; 
  initial begin
    foreach(array[i])begin
         array[i]=$urandom_range(1,20); 
         #10;
    end  
    $display("\tArray  value is=%p\n",array);
  end
initial begin  
  #100;
  $finish();
end  
endmodule  


