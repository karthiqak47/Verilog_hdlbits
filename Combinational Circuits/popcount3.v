module top_module( 
    input [2:0] in,
    output [1:0] out );
    wire a1,a2,a0;
    assign {a2,a1,a0} =in ;
    assign out[1] = (a2 & a1) | (a1 & a0) | (a2 & a0);
    assign out[0] =a1^a2^a0;
endmodule
