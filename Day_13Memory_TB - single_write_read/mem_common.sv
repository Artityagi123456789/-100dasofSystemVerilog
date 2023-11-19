static mailbox gen2bfm=new();
parameter DEPTH=64;
parameter WIDTH=16;
parameter ADDR_WIDTH=$clog2(DEPTH);

class mem_common;
static virtual  mem_intf vif;
static int count=3;
static string testcase="singel_wr_rd";
endclass
