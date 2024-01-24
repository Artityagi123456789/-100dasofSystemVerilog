//Constraint to Generate the pattern 0102030405
class constraint_p;
rand int a[];
constraint a_c{
  a.size == 10;
}
constraint a1_c{
  foreach (a[i])
    if(i%2==0)
      a[i]==0;
  	else
      a[i] == (i+1)/2;
}
endclass
module top;
  constraint_p p;
  initial begin
    p=new();
    p.randomize();
    $display("pattern=%p",p.a);
  end
endmodule
