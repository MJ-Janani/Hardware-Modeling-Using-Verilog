//synchronous up down counter 
module up_down_counter(d_in,load,clear,clock,count,mode);
input [7:0]d_in;
input load,clear,clock,mode;
output reg [7:0]count;
always @(posedge clock)
begin
if (clear) count<=8'b0;//using non-blocking
else if (load) count<=d_in;
else if (mode) count<=count+1;
else count<=count-1;
end
endmodule
