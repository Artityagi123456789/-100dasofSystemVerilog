module tb;
integer [3:0] a;
int [3:0] b;

initial begin
a = 4'b01xz;
b = 4'b01xz;
$display("a=%b,b=%b",a,b);
end
endmodule