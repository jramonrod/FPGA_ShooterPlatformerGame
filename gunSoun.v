`timescale 1ns / 1ps
module gunSoun(
input clk,
output speaker
);
reg [14:0] counter;
always @(posedge clk) if(counter==28408) counter<=0; else counter <= counter+1;

reg speaker;
always @(posedge clk) if(counter==28408) speaker <= ~speaker;
endmodule 