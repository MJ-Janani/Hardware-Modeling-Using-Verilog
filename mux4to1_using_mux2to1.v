module mux2to1(in,sel,out);
input [1:0]in;
input sel;
output out;
assign out=in[sel];
endmodule

module mux4to1_using_mux2to1(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
wire [1:0]t;
mux2to1 M1(in[1:0],sel[0],t[0]);
mux2to1 M2(in[3:2],sel[0],t[1]);
mux2to1 M3(t,sel[1],out);
endmodule
