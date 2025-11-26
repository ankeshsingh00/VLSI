`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2021 13:57:39
// Design Name: 
// Module Name: MUX2x1_data
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


module MUX2x1_data(
    input i0,
    input i1,
    input s,
    output y
    );
    reg y;
    always@(i0 or i1 or s)
    begin 
       y =(~s&i0)|(s&i1);
    end
endmodule
