//Write a Constraint to detect odd number of 1's in an 8 bit Sequence.
class sample;
  randc bit[4:0]num;
  
  constraint num_c{
    $countones(num)%2 != 0;
  }
  
endclass

module tb;
  sample s;
  initial begin
   s=new();
    repeat(5)begin
         s.randomize();
      $display("\t Count_onces is=%0b",s.num); 
    end  
  end
endmodule  
