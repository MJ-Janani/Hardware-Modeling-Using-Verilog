module alu(a,b,sum,zero,sign,carry,parity,overflow);
input [15:0] a,b;
output [15:0] sum;
output zero,sign,carry,parity,overflow;
assign {carry,sum}=a+b;
assign zero=~|sum;
assign sign=sum[15];
assign parity=~^sum;
assign overflow=(a[15]&b[15]&~sum[15])|(~a[15]&~b[15]&sum[15]);
endmodule
