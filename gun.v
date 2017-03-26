`timescale 1ns / 1ps
module gunSound(
	input clk,
	output speaker
    );
	reg [14:0] counter;
	always @(posedge clk) if(counter==56816) counter<=0; else counter <= counter+1;

	reg speaker;
	always @(posedge clk) if(counter==56816) speaker <= ~speaker;
endmodule 

