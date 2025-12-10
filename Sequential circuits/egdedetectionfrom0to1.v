module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] buffer;
    
    always @(posedge clk) begin
        pedge <= (~buffer) & in;   
        buffer  <= in;             
    end

    

endmodule
