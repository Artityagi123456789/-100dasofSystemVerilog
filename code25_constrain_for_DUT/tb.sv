class sample;
  rand bit[31:0] a1;
  constraint c{
    foreach(a1[i]){
      if(i == 0)
        a1[i] == 0;}}
    function bit display();
        $display("a1 = %0d",a1);
    endfunction          
endclass
module tb;
  reg[31:0] a;
  bit clk,rst;
  wire[31:0] b,c,A;  
  sample s = new();
  initial begin
    clk = 0; rst = 1;
    s.randomize();
    a = s.a1;
    s.display();
  end
  always #5 clk = ~clk;
  dut d(.a(a),.clk(clk),.rst(rst),.b(b),.c(c),.A(A));
  initial begin
    #10
    $display("A = %0d",A);
    #100 $finish;
  end
endmodule
  
  


    
    
    

