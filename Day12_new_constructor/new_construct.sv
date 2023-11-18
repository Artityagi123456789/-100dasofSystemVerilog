//new() constructor code in systemVerilog
class packet;
  rand bit[2:0]addr;
  rand logic[2:0]data;
  
  function void print();
    $display("\t\baddr=%0d,data=%0d",addr,data);
  endfunction
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new();
    pkt.randomize();
    pkt.print();
  end
endmodule  
  
  

