//Q. Two parts problem. Part I: Using SystemVerilog, create a simple Packet class that has a variable length (2 to 5 bytes long) payload. There is an additional constraint that the sum of all payload bytes is 100. 
//Part II: Write a testbench to generate 5 (five) such packets.
class sample;
  rand bit[7:0]payload[];
  
  constraint payload_c {
    payload.size inside{[2:5]};
    payload.sum == 100;
    foreach(payload[i])
      payload[i] inside {[1:100]};
  }
    
endclass
module tb;
  sample pkt;
      int i;
  initial begin
    repeat(5)begin
         pkt = new();
      if(pkt.randomize())begin
        $write("\tpayload size is %0d=",pkt.payload.size);
        for(int i = 0; i<pkt.payload.size; i++)
          $write(" %2d", pkt.payload[i]);
          $display;
        end else begin
           $display("randomization failed");
       end
     end
  end
endmodule