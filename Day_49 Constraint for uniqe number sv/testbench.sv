/*array of size between 10 and 20 with each element between 1 and 100. One last requirement was that the array contains elements that are unique. The solution should show the class and its constraints to generate the array. The second part of the problem is to generate the same array with bare programming i.e., without using Systemverilog constraints.*/
class packet;
  rand bit[7:0] num[];
  
  constraint num_c {
    num.size inside{[10:20]};
    foreach(num[i])
      num[i] inside{[1:100]};
      unique {num};
  }
endclass
module top;
  packet pkt;
  initial begin
    repeat(10)begin
          pkt = new();
      if(pkt.randomize())begin
        $write("num is %0d",pkt.num.size());
         foreach(pkt.num[i])
           $write(" %2d",pkt.num[i]);
          $display;
       end else begin
         $display("randomized fail");
       end  
     end
   end
endmodule
          
    