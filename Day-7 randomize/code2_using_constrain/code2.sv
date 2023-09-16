//code-2: a packet class with random variables and constraints. plus tcstbench code that constructs and random izes a packet.

class sample_pkt;
rand bit[7:0]addr1;
randc bit[2:0]addr2;

//limit the value of addr1 and addr2
constraint addr_c{
			addr1>15;
             addr2>4;
			}
endclass

module top;
sample_pkt s;
initial begin
		s = new();
		s.randomize();
		$display("\t addr1=%0d,\t addr2=%0d",s.addr1,s.addr2);
		
	end
endmodule	


