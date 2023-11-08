// Write a constraint to randomly generate unique Prime numbers in an array between 1 to 300.The generated Prime number should have 3 in it (ex: 3,13,23...)

class sample;
//property
rand int addr[];
rand int b[$];

//method
function void print();
	$display("Prime No=%p",b);
endfunction
function integer prime(int value);
	if(value <= 1)
		return 2;
	for(int i=2; i<value; i++)begin
		if(value%i == 0)
			return 2;
	end
	prime = value;
endfunction	

function void post_randomize();
	for(int i=0; i<addr.size(); i++)begin
		if(addr[i]%10 == 3)
			b.push_back(addr[i]);
	end
endfunction	

	
//constraint
constraint addr_c{
	addr.size() == 200;
	}
constraint addr_c2{	
	foreach(addr[i])
	addr[i]==prime(i);
	
}

endclass

module top;
sample s;
	initial begin
	s=new();
	s.randomize();
	s.print();
	end
endmodule	
