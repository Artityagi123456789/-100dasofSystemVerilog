//Ques: a is 32-bit input to Dut with clk and rst Output are 32 bits b and c. when a[0]==1,a=b. when a[0]==0,a=c.write the constraints for this dut.
module dut(a,clk,rst,b,c,A);
  input[31:0] a;
  input clk,rst;
  output reg[31:0] b,c,A;

  always@(posedge clk)
    begin
      b = 1; c = 0;
      if(a[0] == 0) begin
        A = c;
      end
      else if(a[0] == 1) begin
        A = b;
      end
      else
        $display("no result");
    end

endmodule
