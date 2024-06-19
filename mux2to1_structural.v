module mux2to1(out,in,sel);
input [1:0]in;
input sel;
output out;
wire [1:0]t;
wire a;
not A(a,sel);
and B(t[0],in[0],a);
and C(t[1],in[1],sel);
or D(out,t[0],t[1]);
endmodule
