module decoder2x4_nand (
    input  wire A,
    input  wire B,
    output wire Y0,
    output wire Y1,
    output wire Y2,
    output wire Y3
);

    wire nA, nB;
    wire w0, w1, w2, w3;

    // Inverters using NAND
    nand (nA, A, A);
    nand (nB, B, B);

    // First level NANDs (active-low minterms)
    nand (w0, nA, nB); // ~(~A · ~B)
    nand (w1, nA, B ); // ~(~A ·  B)
    nand (w2, A,  nB); // ~( A · ~B)
    nand (w3, A,  B ); // ~( A ·  B)

    // Second level NANDs to make outputs active-HIGH
    nand (Y0, w0, w0);
    nand (Y1, w1, w1);
    nand (Y2, w2, w2);
    nand (Y3, w3, w3);

endmodule
