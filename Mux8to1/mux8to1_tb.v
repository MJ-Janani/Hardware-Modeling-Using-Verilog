module mux8to1_tb();
reg [7:0] in;
wire out;
reg [2:0] sel;
mux8to1 uut(.in(in),.out(out),.sel(sel));
initial begin
$monitor ($time,"in=%b,sel=%b,out=%b",in,sel,out);
$dumpfile("mux8to1.vcd");
$dumpvars(0,mux8to1_tb);
in=8'b00001111 ;sel=3'b000;
#5 sel=3'b001;
#5 sel=3'b010;
#5 sel=3'b011;
#5 sel=3'b100;
#5 sel=3'b101;
#5 sel=3'b110;
#5 sel=3'b111;
#5 $finish();
end 
endmodule
