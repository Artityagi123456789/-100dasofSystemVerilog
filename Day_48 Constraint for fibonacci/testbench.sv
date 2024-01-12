//Class implemmenting fibonacci Series using constraint
class fibonacci;
  rand int unsigned array[]; //dynamic array
  
  constraint fib_c{
    array.size inside {[2:11]};                     
     foreach(array[i])
       if(i==0)
             array[i] == 0;
       else if(i== 1)
             array[i] ==1;
         else
           array[i] == array[i-1] + array[i-2];
                      
     }               
endclass
  module top;
    fibonacci fc;
  //  int i;
    initial begin
      repeat(5)begin
          fc = new();
          if(fc.randomize())begin
            $write("array is %0d =", fc.array.size);
          for(int i=0; i<fc.array.size; i++)
            $write(" %0d",fc.array[i]);
          $display;
         end else begin
          $display("randomized faild");
        end
      end 
     end
  endmodule