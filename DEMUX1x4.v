`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Student 
// Engineer: Ankesh Singh 
// 
// 
// Create Date: 18.12.2025 16:39:50
// Design Name: 
// Module Name: DEMUX1x4
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


module DEMUX1x4(
    input x,
    input s1,
    input s0,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0 = x&(~s1)&(~s0);
    assign y1 = x&(~s1)&(s0);
    assign y2 = x&(s1)&(~s0);
    assign y3 = x&(s1)&(s0);
endmodule
