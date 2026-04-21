module seq_circuit (
    input clk,
    input rst,
    output reg [2:0] q
);

wire d2, d1, d0;

// Next-state logic
assign d2 = (q[0] ^ q[1]) ^ (~(q[1] | q[2]));
assign d1 = q[2];
assign d0 = q[1];

// Flip-flops
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 3'b000;
    else
        q <= {d2, d1, d0};
end

endmodule
