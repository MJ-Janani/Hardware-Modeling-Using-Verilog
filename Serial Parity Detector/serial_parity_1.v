module serial_parity_detector1(x,clock,z);
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
            end
        endcase
        endmodule
