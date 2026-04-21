
module seq_circuit_sv (
    input logic clk,
    input logic rst,
    output logic [2:0] q
);

logic d2, d1, d0;

assign d2 = (q[0] ^ q[1]) ^ (~(q[1] | q[2]));
assign d1 = q[2];
assign d0 = q[1];

always_ff @(posedge clk or posedge rst) begin
    if (rst)
        q <= 3'b000;
    else
        q <= {d2, d1, d0};
end

endmodule
