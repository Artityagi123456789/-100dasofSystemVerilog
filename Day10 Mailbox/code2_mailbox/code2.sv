module tb;
mailbox mbox1;
mailbox mbox2;
int sum;

initial begin
	sum=0;
	forever begin
	mbox2.get(sum);
	$display("%0t: sum: 0x%8x",$time,sum);
	#1;
	sum++;
	mbox1.put(sum);
	end
end

initial begin
	forever begin
	#1;	
	mbox2.put(sum);
	mbox1.get(sum);
	sum++;	
	$display("%0t: sum: 0x%8x",$time,sum);
	end
end
initial begin
#10;
$finish();
end
endmodule
