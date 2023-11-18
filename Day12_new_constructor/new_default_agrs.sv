//	demonstrate this with a simple code
class packet;
  bit[2:0]addr;
  integer data;
  function new(input bit[2:0]addr_t,input integer data_t);
    	addr=addr_t;
    	data=data_t;
  endfunction  

  function void print();
    $display("\taddr=%0d,data=%0d",addr,data);
  endfunction
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new(6,30);
    pkt.print();
  end
endmodule  
  
