//Code-2 declate queue of integer type and implemented queue method.

module queue;
integer intQ[$];

initial begin
	for(int i=0; i<=10; i++) begin
		intQ[i] = $urandom_range(50,60);
	end
			$display("\nqueue value=%p",intQ);
			$display("\nSize of the queue =%0d, \nintQ=%p",intQ.size(),intQ);
		intQ.delete(3);
    	  	$display("\tAfter using intQ.delete(3)");
         	 $display("Size of the queue =%0d, \nintQ=%p",intQ.size(),intQ);

		 intQ.pop_front();
     		 $display("After using intQ.pop_front()");
     		 $display("Size of the queue =%0d, \nintQ=%p",intQ.size(),intQ);

		 intQ.pop_back();
     		 $display("After Using intQ.pop_back()");
    		  $display("Size of the oueue =%0d, \nintQ=%p",intQ.size(),intQ);
      
     	 intQ.push_front(10);
    	  			$display("After using intQ.push_front(10)");
    			  $display("Size of the queue =%0d, \nintQ=%p",intQ.size(),intQ);
      
     	 intQ.push_back(17);
     				 $display("After using intQ.back_front(17)");
      				$display("Size of the queue =%0d, \nintQ=%p",intQ.size(),intQ);	 
        
      
      
end
endmodule
