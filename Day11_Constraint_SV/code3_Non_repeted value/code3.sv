//Write Constraint to generate random values for var1[7:0] within 50 and var2[7:0]with the nonreapeted value in every randomizeation.
class sample;

rand bit[7:0] var1;
rand logic[7:0] var2;

function void print();
	$display("var1=%0d,var2=%0d",var1,var2);
endfunction

constraint var1_c{
	var1 inside {[0:50]};
	unique{var2};}

endclass

module top;
sample s;
initial begin
	s=new();
	repeat(8)begin
	assert(s.randomize());
	s.print();
	end
end
endmodule
