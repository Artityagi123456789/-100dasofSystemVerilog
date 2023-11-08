class sample;
randc bit [15:0]addr;
function void print(string name="Power of 2");
	$display("This is %s",name);
	$display("\tPower=%0d",addr);
endfunction

constraint addr_c{
	$onehot(addr);
	}
	
endclass

module top;
sample s;
initial begin
		repeat(10)begin
		s=new();
		s.randomize();
		s.print();
		end
	
end
endmodule
