module up_down_counter_tb();
reg [7:0]d_in;
reg clear,clock,load,mode;
wire [7:0]count;
up_down_counter uut(d_in,load,clear,clock,count,mode);
initial begin
$dumpfile("up_down_counter.vcd");
$dumpvars(0,up_down_counter_tb);
end
///////
initial begin
#5 d_in=8'h00;clock=0; clear=0;load=0; mode=0;//initialize
#10 d_in=8'h04; clear=0;load=1;//load value with delay 10
#10 load=0;mode=0;//disable load meanwhile down count for 40secs--03--02--01--00
#40 mode=1; //enable up count for next 40 secs--01--02--03--04
#40 d_in=8'hff; clear=0;load=1;//load new value
#10 load=0;mode=0;//disable load and down count for 40 secs
#40 mode=1; //up count for 40
#40 
d_in=8'hfa; clear=0;load=1;//load new value
#10 load=0;mode=0;//disable load and down count for 40 secs
#40 d_in=8'h00;load=1;//again load new value then
#10 load=0;mode=1; //disable load and up count for 40
#40$finish();
end
always #5 clock=~clock;//clock generation

endmodule
