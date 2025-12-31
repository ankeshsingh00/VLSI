module full_adder (
    input  wire A,
    input  wire B,
    input  wire Cin,
    output wire Sum,
    output wire Cout
);

    wire sum1;
    wire carry1;
    wire carry2;

    // First Half Adder: A + B
    xor (sum1, A, B);
    and (carry1, A, B);

    // Second Half Adder: sum1 + Cin
    xor (Sum, sum1, Cin);
    and (carry2, sum1, Cin);

    // OR gate for final carry
    or (Cout, carry1, carry2);

endmodule
