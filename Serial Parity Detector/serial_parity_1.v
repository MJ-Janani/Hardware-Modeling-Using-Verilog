module serial_parity_detector(x,clock,z);
    input x,clock;
    output reg z;
    reg state;
    parameter EVEN=0,ODD=1;
    always @(posedge clock)
        case (state)
       		EVEN:
            begin
                z<=x ? 1:0;
                state<=x?ODD:EVEN;
            end
            ODD:
            begin
                z<=x ? 0:1;
                state<=x?EVEN:ODD;
            end
            default: begin
                state<=EVEN;
           
        endcase
        endmodule

 module serial parity_tb;
     reg x,clock;
     wire z;
     serial_parity_detector uut(x,clock,z);
     
     initial begin
         $dumpfile("serial_parity_detector.vcd");
         $dumpvars(0,serial_parity_tb);
         clock=1'b0;
         #100 $finish();
     end
     always #5 clock=~clock;
     initial begin
        #2 x=0; #10 x=1; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 $finish();
     end
 endmodule
