module mux4x1_nand (
    input  wire I0, I1, I2, I3,
    input  wire S1, S0,
    output wire Y
);

    wire nS0, nS1;
    wire w0, w1, w2, w3;
    wire y_n;

    // Inverters using NAND
    nand (nS0, S0, S0);
    nand (nS1, S1, S1);

    // Input gating (selection)
    nand (w0, I0, nS1, nS0); // I0 when S1S0 = 00
    nand (w1, I1, nS1, S0 ); // I1 when S1S0 = 01
    nand (w2, I2, S1,  nS0); // I2 when S1S0 = 10
    nand (w3, I3, S1,  S0 ); // I3 when S1S0 = 11

    // Final NAND (acts as OR in NAND logic)
    nand (Y, w0, w1, w2, w3);

endmodule
