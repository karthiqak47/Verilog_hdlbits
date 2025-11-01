module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//
    
    always@(posedge clk)
        q<=d;   //stores the value at input to output at every pos clock edge

endmodule
