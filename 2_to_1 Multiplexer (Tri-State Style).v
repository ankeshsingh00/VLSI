//2-to-1 Multiplexer (Tri-State Style) , Use two bufif gates to select between inputs I0 and I1 with control S. Ensure only one path is active at a time.

module mux2x1_tristate (
    input  wire I0,
    input  wire I1,
    input  wire S,
    output wire Y
);

    wire nS;

    // Invert select
    not (nS, S);

    // Tri-state buffers
    bufif1 (Y, I1, S );   // When S = 1, I1 drives Y
    bufif1 (Y, I0, nS);   // When S = 0, I0 drives Y

endmodule
