//CODE-4  Implementing pre randomize methods in the class.

class sample_pkt;
  rand  bit [7:0] addr;
  randc bit [7:0] data;   
  
  //post randomization method
  function void pre_randomize();
    $display("Inside pre_randomize");
  endfunction
  
  //post randomization method
  function void post_randomize();
    $display("Inside post_randomize");
    $display("value of addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module top;
  initial begin
    sample_pkt pkt;
    pkt = new();
    pkt.randomize();
  end
endmodule



