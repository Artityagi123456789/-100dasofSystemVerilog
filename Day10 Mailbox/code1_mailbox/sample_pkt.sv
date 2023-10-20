class sample_pkt;
rand bit [7:0]addr;
rand bit[7:0]data;

function void post_rand();
	$display("packet generated");
	$display("packet:: addr=%0d,Data=%0d",addr,data);
endfunction
endclass
