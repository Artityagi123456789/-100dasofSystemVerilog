//How to disable Randomization.
class packet;
  rand bit [4:0] data1;  
  rand bit [4:0] data2;
  
   constraint data1_c {
     data1 inside{[10:20]};
   }    
   constraint data2_c {
     data2 inside{25,30,40};
   }         
endclass 

module tb;
    packet pkt;
    initial begin
      pkt = new();
      $display("\tbefore randomization disabled");                                    
      pkt.rand_mode(0);
      $display("\t\tdata1 value is= %0d,data2 is=%0d", pkt.data1,pkt.data2); 
       
      $display("\tAfter randomization disabled");
      pkt.rand_mode(1);
        repeat(2)begin
          pkt.randomize();
          $display("\t\tdata1 value is= %0d,data2 is=%0d", pkt.data1,pkt.data2);        
       end
    end
endmodule
