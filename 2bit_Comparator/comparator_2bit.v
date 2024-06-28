module comparator_2bit(a0,a1,b0,b1,gt,lt,eq);
input a0,a1,b0,b1;
output reg gt,lt,eq;
always @(*)
begin
gt=( {a1,a0} > {b1,b0} ); //concatenating the bits for 2 bits
lt=( {a1,a0} < {b1,b0} ); //relational opers whose op is boolean,true--1,false==0
eq=( {a1,a0} == {b1,b0} );//those values are directly stored here
$display("{a1,a0}={%b,%b} when compared with {b1,b0}={%b,%b} gives gt=%b,lt=%b,eq=%b",a1,a0,b1,b1,b0,gt,lt,eq);
end
endmodule
