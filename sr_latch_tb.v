module sr_latch_tb;
reg s,r;
wire q,qb;
sr_latch uut(s,r,q,qb);
initial begin
$dumpfile("sr_latch.vcd");
$dumpvars(0,sr_latch_tb);
$monitor($time," s=%b,r=%b,q=%b,qb=%b",s,r,q,qb);
s=0;r=1; //q=0 ; qb=1
#10 s=1;r=1;//holds previous state
#10 s=1;r=0;//also can be written as s=1'b0 ; r=1'b0
#10 s=0;r=1;
//#10 s=0;r=0;//invalid condition as both q=qb=1
#10 s=1;r=0;
#10 s=1;r=1;
#10 
$finish();
end
endmodule
