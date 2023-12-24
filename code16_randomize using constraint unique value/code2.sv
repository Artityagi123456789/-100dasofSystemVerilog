class sample;
  rand int array[6:10];
  
  constraint array_c{
    foreach(array[i])
      array[i] inside {[1:20]};
    }
  
  constraint array_uniq{
    unique{array};
  }
  
endclass

module tb;
  sample s;
  initial begin
    s=new();
    s.randomize();
    $display("Array value is=%p",s.array);
  end
endmodule  
