class mem_tx;
//Properties
rand bit wr_rd;
rand bit [ADDR_WIDTH-1:0] addr;
rand bit [WIDTH-1:0] data;
//Methods
function void print(string name="Tx_class");
	$display("## %0t ##\t%0s\t%s:\t\tAddress=%0h\t\tData=%0h",$time,name,wr_rd?"WRITE":"READ",addr,data);
endfunction
//Constraints
endclass

