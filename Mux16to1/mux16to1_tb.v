module mux16to1_tb;
reg [15:0]in;
reg [3:0]sel;
wire out;
mux16to1 uut(in,sel,out);
initial begin
$dumpfile("mux16to1.vcd");
$dumpvars(0,mux16to1_tb);
$monitor($time ,"in=%h,sel=%h,out=%b",in,sel,out);
in=16'h3f0d;
sel=4'h0;
#10 sel=4'hb;
#10 sel=4'hf;
#10 sel=4'h2;
#10 sel=4'hd;
#10 sel=4'h9;
#10 sel=4'h7;
#10 sel=4'ha;
$finish();
end
endmodule
