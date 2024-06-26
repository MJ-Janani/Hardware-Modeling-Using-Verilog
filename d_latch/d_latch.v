//D latch using continuous assignment
module d_latch(en,D,Q);
input en,D;
output Q;
assign Q=en?D:Q;//using conditional operator
endmodule
