//CODE-3: The sample class packet has random variables addr and data, on randomization, these variables will get random value. 

class sample_pkt;
  rand bit [2:0]addr;
  randc bit[2:0] data;   
endclass

module rand_methods;
  initial begin
    sample_pkt pkt;
     pkt = new();
    
    //calling randomize method
      pkt.randomize();
    
    $display("\taddr = %0d \t data = %0d",pkt.addr,pkt.data);
  end
endmodule  
