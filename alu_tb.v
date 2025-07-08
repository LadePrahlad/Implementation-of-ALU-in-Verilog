`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 15:22:34
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
 reg  [7:0] x,y;
 reg  [3:0] sel;
 wire [7:0] out;
 wire zero,carry,overflow,negative;
 alu uut(x,y,sel,out,zero,carry,overflow,negative);
 initial begin
 $display("ALU Testbench Starts");
 $monitor("x=%d y=%d sel=%b -> out=%d zero=%b carry=%b overflow=%b negative=%b", x, y, sel, out, zero,carry,overflow,negative);
 x=8'd25;y=8'd15;
 sel=0;
 #10 sel=1;
 #10 sel=2;
 #10 sel=3;
 #10 sel=4;
 #10 sel=5;
 #10 sel=6;
 #10 sel=7;
 #10 sel=8;
 #10 sel=9;
 #10 sel=10;
 #10 sel=11;
 #10 sel=12;
 #10 sel=13;
 #10 sel=14;
 
 #10 x=8'd128;y=8'd128;
 sel=0;
 #10 sel=1;
 #10 sel=2;
 #10 sel=3;
 #10 sel=4;
 #10 sel=5;
 #10 sel=6;
 #10 sel=7;
 #10 sel=8;
 #10 sel=9;
 #10 sel=10;
 #10 sel=11;
 #10 sel=12;
 #10 sel=13;
 #10 sel=14;
 #10 sel=2;x=8'd255;y=8'd255;
 #10 $finish;
 end
 initial begin
    $dumpfile("wave.vcd");    // This tells the simulator to generate the file
    $dumpvars(0, alu_tb);     // This dumps all variables in alu_tb
end
endmodule
