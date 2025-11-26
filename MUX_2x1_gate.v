`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Design Name: 
// Module Name: MUX_2x1_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_2x1_gate(
    input i0,
    input i1,
    input s,
    output y
    );
    wire sbar, p, q;
    not n1 (sbar, s);
    and n2 (p, sbar, i0);
    and n3 (q, i1, s);
    or n4 (y, p,q);
    
endmodule
