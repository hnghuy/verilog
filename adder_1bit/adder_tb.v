`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Huy Mai Hoang
// 
// Create Date: 07/21/2025 12:47:29 PM
// Design Name: full adder test bench
// Module Name: adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: a tb for fulladder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_full_adder;

    reg a, b, cin;
    wire sum, cout;

    adder dut (
        .A(a),
        .B(b),
        .Cin(cin),
        .Sum(sum),
        .Cout(cout)
    );

    initial begin
        $display("a b cin | sum cout");
        $display("--------|----------");

        // test case
        a = 0; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        $finish;
    end

endmodule
