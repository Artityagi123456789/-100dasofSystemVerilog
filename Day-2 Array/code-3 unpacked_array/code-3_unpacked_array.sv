Declare bit unpacked array compare and print assign a random value of 2-bit variable

module unpackedArray;
bit intA1[1:0];
bit intA2[1:0];
 initial begin
  for(int i=0; i<3; i++) begin
  intA1[i] = $random;
  intA2[i] = $random;
  end
  $display("intA1=%p, intA2=%p", intA1,intA2);
   if(intA1 == intA2)
     $display("array matched");
   else
     $display("array not matched");
end
endmodule