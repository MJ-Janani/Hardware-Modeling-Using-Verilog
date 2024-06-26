module alu_tb;
reg [15:0]a,b;
wire [15:0]sum;
wire Z,S,Cy,P,O;
alu uut(.a(a),
	.b(b),
	.sum(sum),
	.zero(Z),
	.sign(S),
	.carry(Cy),
	.parity(P),
	.overflow(O)
	);
initial begin
$dumpfile("alu.vcd");
$dumpvars(0,alu_tb);
a=16'hfffe;b=16'h0002;
#10 a=16'h8fb9;b=16'h0013;
#10;
$finish();
end
endmodule
