`timescale 1ns / 1ps
module Character_data(
	input [3:0] char,
	input[11:0] address,
	output reg[5:0] data
    );
	 
	 
	wire[5:0] chihiro_data;
	wire[5:0] claptrap_data;
	wire[5:0] handsome_data;
	wire[5:0] joker_data;
	wire[5:0] one_data;
	wire[5:0] zero_data;
	wire[5:0] spike_data;
	wire[5:0] orig1_data;
	wire[5:0] orig2_data;
	 
	Sprite_Chihiro chihiro(address, chihiro_data);
	Sprite_Claptrap claptrap(address, claptrap_data);
	Sprite_Handsome handsome(address, handsome_data);
	Sprite_Joker joker(address, joker_data);
	Sprite_One one(address, one_data);
	Sprite_Zero zero(address, zero_data);
	Sprite_Spike spike(address, spike_data);
	Sprite_A orig1(address,orig1_data);
	Sprite_G orig2(address,orig2_data);


	always@(address)
	begin
		case(char)
			3'd0:
			begin
				data = chihiro_data;
			end
			3'd1:
			begin
				data = claptrap_data;
			end
			3'd2:
			begin
				data = handsome_data;
			end
			3'd3:
			begin
				data = joker_data;
			end
			3'd4:
			begin
				data = one_data;
			end
			3'd5:
			begin
				data = zero_data;
			end
			3'd6:
			begin
				data = spike_data;
			end
			3'd7:
			begin
				data = orig1_data;
			end
			3'd8:
			begin
				data = orig2_data;
			end
			default:
			begin
				data = chihiro_data;
			end
		endcase
	end
	
		

endmodule