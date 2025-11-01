module top_module (
    input clk,
    input areset,   // active-high asynchronous reset
    input [7:0] d,
    output reg [7:0] q
);
    always @(posedge clk or posedge areset) begin
        if (areset)
            q <= 8'b0;      // Reset output to 0
        else
            q <= d;         // Otherwise, capture input
    end
endmodule
