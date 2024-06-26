module d_latch_tb;
reg en,D;
wire Q;
d_latch uut(en,D,Q);
initial begin
$dumpfile("d_latch.vcd");
$dumpvars(0,d_latch_tb);
en=0;D=0;//previous state not known so unknown state
#10 en=1;D=0;
#10 en=0;D=0;//en=0 so previous state 0 is hold
#10 en=0;D=1;//previous state 0 is hold
#10 en=1;D=0;
#10 en=1;D=1;
#10 
$finish();
end
endmodule




















