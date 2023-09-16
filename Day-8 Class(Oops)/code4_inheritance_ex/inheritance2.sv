class sample_class;
int a;
bit[3:0]b;
endclass

class child_class extends sample_class;
string subject;

function new();
	a=10;
	b=4'b1001;
	subject="System_verilog";
endfunction

function void print();
	$display("\n\ta=%0d \n\tb=%0b \n\tsuject=%s",a,b,subject);
endfunction

endclass

module top;
initial begin
	child_class c=new();
	c.print();
end
endmodule


