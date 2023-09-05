module void_function;
  int x;
  //void function to display current simulation time 
  function void current_time;
    $display("\tCurrent simulation time is %0d\n",$time);    
  endfunction
 
  initial begin
    #5;
    current_time();
    #15;
    current_time();
  end
endmodule
