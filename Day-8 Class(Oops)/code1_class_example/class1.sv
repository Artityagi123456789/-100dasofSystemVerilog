class sample_class;
bit[7:0]data;
bit[1:0]addr;
endclass

module top;
	sample_class s;
	
initial begin
	s=new();
	s.data=2'b11;
	s.addr=2'b01;
	$display("value of data=%0d addr=%0d",s.data,s.addr);
  end
endmodule  
