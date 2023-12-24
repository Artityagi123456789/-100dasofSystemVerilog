//Ques: Drive odd number within the range of 10 to 30 using sv constrint
class sample;
  randc bit[19:0]odd_num;
  
  constraint num_c{
      odd_num inside {[10:30]};
    }
  
  constraint odd_num_c{
     odd_num%2 != 0;
  }
  
endclass

module tb;
  sample s;
  initial begin
   s=new();
      repeat(10)begin
         s.randomize();
       $display("odd number is=%0p",s.odd_num); 
    end  
  end
endmodule  
