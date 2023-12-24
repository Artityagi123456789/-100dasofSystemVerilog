//Suppose is a 7-bit variable .Write constraint for a condition where for alternate bit position value is 1.
class sample;
  rand bit[6:0] var1;
  constraint var1_c{
    foreach(var1[i]) 
    {
      if(i%2 ==0)
        var1[i] == 1;
    }
  }

  function void print();
    $display("\tvariable = %0b",var1);
  endfunction
endclass
module tb;
  sample s = new();
  initial begin
    s.randomize();
    #10
    s.print();
  end
endmodule
    
    
  
