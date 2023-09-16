class packet;
  bit [31:0] addr;
  bit [31:0] data;
  bit   wr_rd;
  
  function new(bit [31:0] addr,data,bit write);
    this.addr  = addr;
   this.data  = data;
   this.wr_rd = wr_rd;
  endfunction
  
  function void print();
    $display("\n addr  = %0h",addr);
    $display(" data  = %0h",data);
    $display(" wr_rd = %0h",wr_rd);
  endfunction
  
endclass

module top;
  packet pkt;

  initial begin
    pkt = new(32'h10,32'hFF,1'b1);
    pkt.print();
  end
  
endmodule
