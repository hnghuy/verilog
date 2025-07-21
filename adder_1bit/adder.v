`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Huy Mai Hoang
// 
// Create Date: 07/21/2025 11:50:39 AM
// Design Name: 
// Module Name: adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: simple fulladder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder(
input   A, B, Cin,
output  Sum, Cout
);
    
assign Sum = A ^ B ^ Cin;
assign Cout = A & B |  Cin & (A ^ B);

endmodule //adder

