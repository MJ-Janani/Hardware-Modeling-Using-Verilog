module serial_parity_detector(x,clock,z);
    input x,clock;
    output reg z;
    reg state;
    parameter EVEN=0,ODD=1;
    always @(posedge clock)
        case (state)
       		EVEN: state<=x?ODD:EVEN;
            ODD: state<=x?EVEN:ODD;
            default:state<=EVEN;   
        endcase
  //here synthesis tool will not generate a latch for output z
    always @(state)
        case(state)
            EVEN:z=0;
            ODD:z=1;
        endcase
        endmodule
