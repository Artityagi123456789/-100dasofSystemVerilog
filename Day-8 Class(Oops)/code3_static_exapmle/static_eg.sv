class packet;
bit[2:0] packet_count;
static int count;

function new();
	count++;
	packet_count=count;
endfunction

function void print();
	$display("packet are=%0d",packet_count);
endfunction
endclass

module top;
packet pkt[3];
initial begin
	foreach(pkt[i])begin
	pkt[i]=new();
	pkt[i].print();
	end
end
endmodule

