// write a constraint for 8 bit variable that provide distribution 70% for range 0-50 and the remaining 30%for range 50-255.

class sample;
  rand bit[7:0]var1;
  
  constraint var_c{
    var1 dist {[0:50]:/70, [51:255]:/30};
    }  
endclass 
    
module tb;
  sample s;
 initial begin
    s=new();
     repeat(10)begin
       s.randomize(); 
       $display("Varible is=%0d",s.var1);
     end  
  end  
endmodule           
           
           

