//Constraint to generate the pattern 0102030405.

class pattern;

rand int var_a[];

function void print();
	$display("\t\tPattern=%p",var_a);
endfunction

constraint var_c{
	var_a.size()==12;
}
constraint var_c1{
	foreach(var_a[i])
		if(i%2==0)
			var_a[i]==0;
		else
			var_a[i]==(i+2)/2;
}			

endclass

module top;
pattern pa;
initial begin
	pa=new();
	assert(pa.randomize());
	pa.print();

end
endmodule
