module mux2to1_tb;
reg [1:0]in;
reg sel;
wire a;
wire t[1:0];
wire out;
mux2to1 uut(out,in,sel);
initial begin
$dumpfile("mux2to1.vcd");
$dumpvars(0,mux2to1_tb);
#5 in=2'b11;sel=0;
#5 in=2'b11;sel=1;
#5 in=2'b01;sel=0;
#5 in=2'b01;sel=1;
#5 in=2'b00;sel=0;
#5 in=2'b00;sel=1;
end
endmodule

