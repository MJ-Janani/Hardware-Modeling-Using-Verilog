module sr_latch(s,r,q,qb);
input s,r;
output q,qb;
//Behavioural
assign q=~(r&qb);
assign qb=~(s&q);
endmodule
