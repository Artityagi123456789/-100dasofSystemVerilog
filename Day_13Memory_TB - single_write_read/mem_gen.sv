class mem_gen;
//properties
mem_tx tx,tx_temp;
mem_tx queue[$];
//method

task run();
	case(mem_common::testcase)
	"singel_wr_rd": begin
			tx=new();
			tx.randomize() with {wr_rd==1;};
			gen2bfm.put(tx);
			tx_temp=new tx;	
			tx_temp.randomize() with {wr_rd==0; addr==tx.addr;};
			gen2bfm.put(tx_temp);
			tx.print();
		end

	"multiple_wr_rd": begin
			repeat(mem_common::count)begin
				tx=new();
				assert(tx.randomize() with {wr_rd==1;});
				gen2bfm.put(tx);
				tx.print();
				tx_temp=new tx;	
				queue.push_back(tx_temp);
			end	
			repeat(mem_common::count)begin
				tx=new();		
				tx_temp=queue.pop_front();	
				assert(tx_temp.randomize() with {wr_rd==0; tx.addr==tx_temp.addr;});
				gen2bfm.put(tx);
				tx.print();
			end
		end	
	endcase
endtask

endclass

