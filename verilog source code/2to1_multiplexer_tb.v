`timescale 1ns/1ps

module mux2x1_tb;

// Inputs
reg I0;
reg I1;
reg Sel;

// Output
wire Y;

// Instantiate the Unit Under Test (UUT)
mux2x1 uut (
    .I0(I0),
    .I1(I1),
    .Sel(Sel),
    .Y(Y)
);

initial begin

    $display("Time\tI0 I1 Sel | Y");
    $monitor("%0t\t%b  %b   %b  | %b", $time, I0, I1, Sel, Y);

    // Test Case 1
    I0 = 0; I1 = 0; Sel = 0;
    #10;

    // Test Case 2
    I0 = 0; I1 = 1; Sel = 0;
    #10;

    // Test Case 3
    I0 = 1; I1 = 0; Sel = 0;
    #10;

    // Test Case 4
    I0 = 1; I1 = 1; Sel = 0;
    #10;

    // Test Case 5
    I0 = 0; I1 = 0; Sel = 1;
    #10;

    // Test Case 6
    I0 = 0; I1 = 1; Sel = 1;
    #10;

    // Test Case 7
    I0 = 1; I1 = 0; Sel = 1;
    #10;

    // Test Case 8
    I0 = 1; I1 = 1; Sel = 1;
    #10;

    $finish;

end

endmodule