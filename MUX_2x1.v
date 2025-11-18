`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 14:27:48
// Design Name: 
// Module Name: MUX_2x1
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


module MUX_2x1(
    input I0,
    input I1,
    input S,
    output reg Y );
    
    always@(I0, I1, S)
    begin 
    if (S)
    Y = I1;
    else 
    Y = I0;
    end
   endmodule
