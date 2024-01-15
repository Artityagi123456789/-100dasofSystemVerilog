// Code your design here
// Code your design here
module counter(
  input clk,Enable,Load,UpDn,
  input[3:0]Data,
  output reg[3:0]Q='d0);
  
  always@(negedge clk)
    if(Enable)
      if(Load)
        	Q <= Data;
      else
        if(UpDn)
          Q <= Q+4'b1;
        else
           Q <= Q-4'b1;
      
  always@(negedge clk)
    $strobe("time=%3t,Q=%0h",$time,Q);
endmodule
