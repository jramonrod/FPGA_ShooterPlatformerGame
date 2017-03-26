`timescale 1ns / 1ps

module music_ROM(
	input clk,
	input [7:0] address,
	output reg [7:0] note
);

always @(posedge clk)
case(address)
		0: 
			note<= 8'd27;
		1: 
			note<= 8'd26;
		2: 
			note<= 8'd27;
		3: 
			note<= 8'd28;
		4: 
			note<= 8'd25;
		5: 
			note<= 8'd26;
		6: 
			note<= 8'd22;
		7: 
			note<= 8'd24;
		8: 
			note<= 8'd27;
		9: 
			note<= 8'd26;
		10: 
			note<= 8'd27;
		11: 
			note<= 8'd28;
		12: 
			note<= 8'd25;
		13: 
			note<= 8'd26;
		14: 
			note<= 8'd22;
		15: 
			note<= 8'd24;
		16: 
			note<= 8'd27;
		17: 
			note<= 8'd26;
		18: 
			note<= 8'd27;
		19: 
			note<= 8'd28;
		20: 
			note<= 8'd25;
		21: 
			note<= 8'd26;
		22: 
			note<= 8'd22;
		23: 
			note<= 8'd24;
		24: 
			note<= 8'd27;
		25: 
			note<= 8'd26;
		26: 
			note<= 8'd27;
		27: 
			note<= 8'd28;
		28: 
			note<= 8'd25;
		29: 
			note<= 8'd26;
		30: 
			note<= 8'd22;
		31: 
			note<= 8'd24;
			
	 default: note <= 8'd0;
endcase
endmodule
