module top;
  bit clk;
  bit Enable, Load, UpDn,Running;
  logic [3:0] Data;
  logic [3:0] Q;
  clocking counter_cb@(negedge clk);
    default input #1ns output #2ns;
    input Q;
    output Enable,Data;
    output #1step UpDn;
    output posedge Load;
  endclocking
  assign int_data = Data;
  default  clocking counter_cb;
    
  initial begin
    // Time 0
    counter_cb.Load <= 0;
    counter_cb.Data <= 0;
    counter_cb.Enable <= 1;
    counter_cb.UpDn <= 1;
    ##2counter_cb.Load <= 1;
    counter_cb.Data[2:0] <= 3'h5;
    
    // Drive 3-bit slice of Q in current cycle

    ##1 counter_cb.Enable <= 0;
        counter_cb.UpDn <= 0;
        counter_cb.Load <= 0;
   ##1 counter_cb.Data <= 3'hz;
    // Wait 1 Clk cycle and then drive Q
  ##1 counter_cb.Enable <= 1;
  ##4 counter_cb.Data[3] <= 1'b0; 
   // Wait 4 Clk cycles, then drive bit 3 of Q 
  	counter_cb.Data[2:0] <= 3'b101;
  	counter_cb.Load <= 1;
  	counter_cb.Data <= ##2 int_data;  
    // Remember Int_Data, then drive Data after 2 clocks
  counter_cb.UpDn <= 1;
  ##1 Running <= 0;
end
 
   initial begin
     clk=0;
     Running=1;
    while(Running)begin
 		#5 clk = ~clk;
    end
   end
    counter dut(.*);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #50 $finish;
  end
  
endmodule
    
  