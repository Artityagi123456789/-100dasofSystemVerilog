mailbox gen2bfm=new();
parameter DEPTH=64;
parameter WIDTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);

class mem_common;
static virtual  mem_intf vif;
static int count=5;
static string testcase="multiple_wr_rd";
static int bfm_count;
static int tx_count;
endclass
