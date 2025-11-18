`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2021 17:26:13
// Design Name: 
// Module Name: FA_using_HA
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

module FA_using_HA(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
   wire s1, s2, s3;
   HA_gate d0 (a, b, s1, s2);
   HA_gate d1 (.a(cin), .b(s1), .sum(sum), .carry(s3) );    
   assign carry = s2 | s3;
endmodule
