module half_adder (
    input  wire A,
    input  wire B,
    output wire Sum,
    output wire Carry
);

    // Sum = A ⊕ B
    xor (Sum, A, B);

    // Carry = A · B
    and (Carry, A, B);

endmodule
