`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2026 22:06:07
// Design Name: 
// Module Name: testbench
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

module updowncounter_tb;

reg clk;
reg reset;
reg up_down;
wire [3:0] count;

updowncounter uut (clk,reset,up_down,count );

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    up_down = 1;

    #10 reset = 0;
    #50;
    up_down = 0;
    #50;
    // Reset
    reset = 1;
    #10 reset = 0;

    #20;
    $finish;
end
initial
begin
    $monitor(" Reset=%b Up_Down=%b Count=%d" ,reset, up_down, count);
end
endmodule