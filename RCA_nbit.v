/*
module fa(a,b,sum,carry);

input a,b;
output sum,carry;
wire t1,t2,t3;
xor G0(a,b,t1),G1(t1,c,sum);
and G2(a,b,t2),G4(t1,c,t3);
or G5(t2,t3,carry);
endmodule
*/

module RCA_nbit #(parameter N = 16) (
    input  [N-1:0] a,
    input  [N-1:0] b,
    input  cin,
    output [N-1:0] sum,
    output cout
);

wire [N:0] carry; // each FA produces a carry bit

assign carry[0] = cin;
assign cout = carry[N];

genvar i;
generate
    for (i = 0; i < N; i = i + 1) begin : fa_loop
        wire t1, t2, t3;
        xor G0 (t1, a[i], b[i]);
        xor G1 (sum[i], t1, carry[i]);
        and G2 (t2, a[i], b[i]);
        and G3 (t3, t1, carry[i]);
        or G4 (carry[i+1], t2, t3);
    end
endgenerate

endmodule
/*
module RCA_nbit(a,b,cin,sum,cout);
parameter N=16;
input [N-1:0]a,b;
output [N:0]carry;//each fa produces a carry bit
assign carry[N]=cout;
assign cin=carry[0];

genvar i;
generate
for (i=0;i<N;i++) begin : fa_loop
wire t1,t2,t3;
xor G0(t1,a[i],b[i]),G1(sum[i],t1,carry[i]);
and G2(t2,a[i],b[i]),G4(t3,t1,carry[i]);
or G5(carry[i+1],t2,t3);
end
endgenerate
endmodule
*/
