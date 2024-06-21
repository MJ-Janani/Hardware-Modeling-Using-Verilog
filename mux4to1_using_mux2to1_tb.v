module mux4to1_using_mux2to1_tb;
reg [3:0]in;
reg [1:0]sel;
wire out;
wire [1:0]t;
mux4to1_using_mux2to1 uut(in,sel,out);
initial begin
$dumpfile ("mux4to1_using_mux2to1.vcd");
$dumpvars (0,mux4to1_using_mux2to1_tb);
$monitor ($time,"in=%b,sel=%b,out=%b",in,sel,out);
in=4'b0101;sel=2'b00;
#10 sel=2'b01;
#10 sel=2'b10;
#10 sel=2'b11;
#10 in=4'b0011;sel=2'b00;
#10 sel=2'b01;
#10 sel=2'b10;
#10 sel=2'b11;
#10;
$finish();
end
endmodule

