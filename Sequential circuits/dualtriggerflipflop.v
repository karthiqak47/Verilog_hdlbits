module top_module (
    input clk,
    input d,
    output q
);
    reg qpos;
    reg qneg;
    initial begin 
        qneg<=0;
        qpos<=0;
    end
    always@(posedge clk) begin
        qpos<=d;
    end
	
    always@(negedge clk) begin
        qneg<=d;
    end
    
    always@(*) begin
        if (clk)
            q<=qpos;
        if (~clk)
            q<=qneg;
    end
endmodule
