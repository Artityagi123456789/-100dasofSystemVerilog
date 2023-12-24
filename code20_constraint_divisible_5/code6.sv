// write a constraint divisible by 5.
class sample;
  randc bit[4:0]num;
  
  constraint num_c{
     num%5 == 0;
  }
  
endclass

module tb;
  sample s;
  initial begin
   s=new();
    repeat(5)begin
         s.randomize();
      $display("\tNumber is=%0p",s.num); 
    end  
  end
endmodule  
