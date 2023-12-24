//Ques: it is possible to call a function constraint?if yes explain with example?

class sample;
  rand bit [2:0]data;
  rand bit [2:0]addr;
  
  constraint data_c{
    data == call(10);
  }
  
  function bit[2:0] call(bit[2:0] var1);
     call=var1;
  endfunction
endclass

module tb;
  sample s;
  initial begin
    repeat(3)begin
    s=new();
    s.randomize();
    $display("\tdata=%0d,  addr=%0d", s.data, s.addr);
    end
  end   
endmodule  
  
  
