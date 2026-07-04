`timescale 1ns / 1ps

module half_adder_tb;

// Inputs
reg A;
reg B;

// Outputs
wire Sum;
wire Carry;

// Instantiate the Half Adder
half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    $display("Time\tA B | Sum Carry");
    $monitor("%0t\t%b %b |  %b    %b", $time, A, B, Sum, Carry);

    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;

end

endmodule