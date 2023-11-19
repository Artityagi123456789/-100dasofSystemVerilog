class mem_tx;
//Properties
rand bit wr_rd;
rand bit [ADDR_WIDTH-1:0] addr;
rand bit [WIDTH-1:0] data;
//Methods
function void print();
	$display("## %0t ## %s:\t\tAddress=%0h\t\tData=%0h",$time,wr_rd?"WRITE":"READ",addr,data);
endfunction
//Constraints
endclass

