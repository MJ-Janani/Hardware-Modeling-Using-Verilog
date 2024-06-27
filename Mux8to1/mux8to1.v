//Blocking assignments
//8 to 1 multiplexer using behavioural 
module mux8to1(in,out,sel);
input [7:0]in;
output reg out;
input [2:0]sel;
//assign out=in[sel]
always @(*)//using a procedural block to design a multiplexer
case (sel)
3'b000 : out=in[0];//lhs shld be reg
3'b001 : out=in[1];
3'b010 : out=in[2];
3'b011 : out=in[3];
3'b100 : out=in[4];
3'b101 : out=in[5];
3'b110 : out=in[6];
3'b111 : out=in[7];
default: out=1'bx;
//in verilog - 4 value logic sys so the logic can not only 0 and 1 but also x and z
endcase 
endmodule
