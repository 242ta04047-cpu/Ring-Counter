`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg reset;

wire [3:0] q;

// Instantiate ring counter
ring_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #50;

    $finish;
end

initial
begin
    $monitor("Time=%0t | Ring Counter = %b",
             $time, q);
end

endmodule