module tb;
  logic [4:0] a;  //declare 5 bit logic type variable
  bit b;        //1 bit variable of bit
  bit[3:0]c;
  byte d;

initial begin
	a = 4'b01xz;
    b=1;
	c = 4'b01xz;
    d = 4'b01xz;
  
  $display("\nlogic data types a=%b,\nbit data types b=%b,\nbit data types c=%b,\nByte data types d",a,b,c,d);

end
endmodule

