//code-3 create a queue of classes in System Verilog.

class fruit;
string name;

function new (string name = "fruit");
	this.name = name;
endfunction
endclass

module top;
	fruit list[$];
	initial begin
		fruit f = new("apple");
		list.push_back(f);

		f = new("Banana");
		list.push_back(f);

		foreach(list[i])
			$display("list[%0d]=%s",i,list[i].name);
			$display("list=%p",list);
	end
endmodule	
