//new() constructor with initialization
class packet;
  bit[2:0]addr;
  integer data;
  function new();
    	addr=3'd7;
    	data=32'habcd;
  endfunction  

  function void print();
    $display("\t\taddr=%0d,data=%0d",addr,data);
  endfunction
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new();
    pkt.print();
  end
endmodule  
  
