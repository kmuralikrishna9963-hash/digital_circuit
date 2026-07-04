module mux2x1(
    input I0,
    input I1,
    input Sel,
    output Y
);

assign Y = Sel ? I1 : I0;

endmodule
