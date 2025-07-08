`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 15:07:38
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] x,
    input [7:0] y,
    input [3:0] sel,
    output reg [7:0] out,
    output reg zero,
    output reg carry,
    output reg overflow,
    output reg negative
    );
    parameter Add = 0, Sub = 1,
              MUL = 2, AND = 3,
              OR = 4, XOR = 5,XNOR=6,
                NOT = 7, NAND =8,
               NOR= 9, SLT = 10,
              SLL = 11, SLR= 12,
              ROL = 13, ROR = 14;
    always @(*)begin
    carry=0;overflow=0;
    case(sel)
    Add: begin
    {carry,out}=x+y;
    overflow=(~x[7]&~y[7]&out[7])|(x[7]&y[7]&~out[7]);
    end
    Sub:begin  
    {carry,out}=x-y;
    overflow=(x[7]& ~y[7]& ~out[7]) | (~x[7] & y[7] & out[7]);
    end
    MUL: begin
    out=x*y;
        overflow=(x*y)>8'hFF;
    end
        
    AND:out=x&y;
    OR:out=x|y;
    XOR:out=x^y;
    XNOR:out=~(x^y);
    NOT:out=~x;
    NAND:out=~(x & y);
    NOR:out=(~x|y);
    SLT:out=(x<y)?8'd1:8'd0;
    SLL:out=x<<1;
    SLR:out=x>>1;
    ROL:out={x[6:0],x[7]};
    ROR:out={x[0],x[7:1]};
    default:out=8'd0;
    endcase
    negative=out[7];
     zero=(out==8'd0)?1'b1:1'b0;
     end
endmodule
