module tb_seq_sv;

logic clk, rst;
logic [2:0] q;

seq_circuit_sv uut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    #200 $finish;
end

initial begin
    $monitor("Time=%0t | q=%b", $time, q);
end

endmodule
