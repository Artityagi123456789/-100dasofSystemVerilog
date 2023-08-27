module tb;
shortint x;//variable declaration
shortint y = 5'b01011;
shortint var1;//signed 
bit [15:0] var2;//unsigned
longint var3;
int var4;


initial begin
		  x = 16'b110zx; 				
  $display("x = %b",x);
  $display("y = %b",y);
	var1 = -11;
	var2 = -13;
	$display("var1 = %0d",var1);
	$display("var2 = %0d",var2);
	$display("var2 = %b",var2); 
	$display("%0d",$size(var1));
	$display("%0d",$size(var2));
end
endmodule

