module tb;
 semaphore sema; //declaring semaphore sema
 initial begin
 sema=new(1); //creating sema with '1' keys
 fork
 display(1); //process-1
 display(2); //process-2
 display(3); //process-3
 join
 end

 //display method
 task automatic display(int key);
	 sema.get(key); //getting 'key' number of keys from sema
	 $display($time,"%0t\tCurrent Simulation Time, Got %0d keys",key);
	 #30;
	 sema.put(key+1); //putting
 endtask 
 endmodule	
