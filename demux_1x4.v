module demux1x4 (
    input  wire D,
    input  wire S1, S0,
    output wire Y0, Y1, Y2, Y3
);

    wire nS0, nS1;

    // Inverters
    not (nS0, S0);
    not (nS1, S1);

    // Output logic
    and (Y0, D, nS1, nS0); // 00
    and (Y1, D, nS1, S0 ); // 01
    and (Y2, D, S1,  nS0); // 10
    and (Y3, D, S1,  S0 ); // 11

endmodule
