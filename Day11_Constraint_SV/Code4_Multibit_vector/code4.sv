//Multibit vector,Having 16bit varible value with only one bit in vector being 1.
class sample;
rand logic[15:0] addr;

function void print();
	$display("\t\taddr=%b",addr);
endfunction	

constraint addr_c{
	$onehot(addr);
	
}

endclass

module top;
sample s;
initial begin
		s=new();
		repeat(10)begin
		s.randomize();
		s.print();
		end
end
endmodule


