mailbox gen2bfm=new();
mailbox mon2cov=new();
parameter WIDTH=16;
parameter DEPTH=64;
parameter ADDR_WIDTH=$clog2(DEPTH);

class mem_common;
static virtual  mem_intf vif;
static int count=30;
static string testcase="multiple_wr_rd";
static int bfm_count;
static int tx_count;
endclass
