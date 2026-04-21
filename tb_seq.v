`timescale 1ns/1ps

module tb_seq;

reg clk, rst;
wire [2:0] q;

seq_circuit uut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation
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
