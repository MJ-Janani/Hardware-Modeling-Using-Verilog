module cyclic_lamp(clock,light);
    input clock;
    output reg [2:0]light;
    reg [1:0]state;
    parameter RED=3'b100;GREEN=3'b010;YELLOW=3'b001;
    parameter s0=0;s1=1;s2=2;
    always @(posedge clock)
        case (state)
            //s0 means RED
            s0:
            begin
                light<=GREEN;state<=s1;//next goes to green
            end
            s1:
            begin
                light<=YELLOW;state<=s2;
            end
            s0:
            begin
                light<=RED;state<=s0;
            end
            default:
            begin
                light<=RED;state<=s0;
            end
        endcase
        endmodule

 module cyclic_lamp_tb;
     reg clock;
     wire [2:0]light;
     cyclic_lamp uut(clock,light);
     always #5 clock=~clock;
     initial begin
         clock=1'b0;
         #100 $finish();
     end
     initial begin
         $dumpfile("cyclic_lamp.vcd");
         $dumpvars(0,cyclic_lamp_tb);
         $monitor("Time: %d , RGY= %b ",$time,light);
     end
 endmodule
