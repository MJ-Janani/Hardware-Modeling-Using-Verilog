module xor_bitwise(out,a,b);
parameter N=16;//16 bit
input [N-1:0]a;
input [N-1:0]b;
output [N-1:0]out;
genvar p;//generate variable

generate 
  for (p=0;p<N;p=p+1)//16 copies of xor are generated via loop

begin : xorbit//begin : end
xor XG(out[p],a[p],b[p]);
end
endgenerate

endmodule


