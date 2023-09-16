class sample_pkt;
  rand bit [2:0]addr;
  rand bit [2:0] data;   
endclass

module top;
  initial begin
    sample_pkt pkt;
    pkt = new();
    
    //disable rand_mode of addr variable of pkt
   	pkt.addr.rand_mode(0);
    
    //calling randomize method
    pkt.randomize();
    
    $display("\taddr = %0d \t data = %0d",pkt.addr,pkt.data);
    
    $display("\taddr.rand_mode() = %0d \t data.rand_mode() = %0d",pkt.addr.rand_mode(),pkt.data.rand_mode());
  end
endmodule
