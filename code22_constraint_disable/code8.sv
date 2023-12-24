//How to disable Constraint.
class packet;
  rand bit [7:0] addr;
  
   constraint addr_c {
     addr>4; 
     addr<15;
   }            
endclass 

module tb;
    packet pkt;
    initial begin
      pkt = new();
      $display("\tbefore constraint disabled");                                    
      pkt.addr_c.constraint_mode(0);
      $display("\t\taddr value is= %0d", pkt.addr); 
       
      $display("\tAfter constraint disabled");
      repeat(2)begin
          pkt.randomize();
        $display("\t\t addr value is= %0d", pkt.addr); 
      end
    end
endmodule
