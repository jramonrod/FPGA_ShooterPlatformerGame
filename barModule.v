`timescale 1ns / 1ps
module Barras(
	input[1:0] stage_number,
	output[9:0] bar1_h_m,
	output[9:0] bar1_h_e,
	output[9:0] bar1_v_m,
	output[9:0] bar1_v_e,
	output[9:0] bar2_h_m,
	output[9:0] bar2_h_e,
	output[9:0] bar2_v_m,
	output[9:0] bar2_v_e,
	output[9:0] bar3_h_m,
	output[9:0] bar3_h_e,
	output[9:0] bar3_v_m,
	output[9:0] bar3_v_e,
	output[9:0] bar4_h_m,
	output[9:0] bar4_h_e,
	output[9:0] bar4_v_m,
	output[9:0] bar4_v_e
    );
	
	
	assign bar1_h_m = bar1_r[0];
	assign bar1_h_e = bar1_r[1];
	assign bar1_v_m = bar1_r[2];
	assign bar1_v_e = bar1_r[3];
	
	assign bar2_h_m = bar2_r[0];
	assign bar2_h_e = bar2_r[1];
	assign bar2_v_m = bar2_r[2];
	assign bar2_v_e = bar2_r[3];
	
	assign bar3_h_m = bar3_r[0];
	assign bar3_h_e = bar3_r[1];
	assign bar3_v_m = bar3_r[2];
	assign bar3_v_e = bar3_r[3];
	
	assign bar4_h_m = bar4_r[0];
	assign bar4_h_e = bar4_r[1];
	assign bar4_v_m = bar4_r[2];
	assign bar4_v_e = bar4_r[3];
	
	
	reg[9:0] bar1_r[3:0];
	reg[9:0] bar2_r[3:0];
	reg[9:0] bar3_r[3:0];
	reg[9:0] bar4_r[3:0];
	
	always@(stage_number)
	begin
		case(stage_number)
			2'd0:
			begin
		
				bar1_r[0] = 9'd100;
				bar1_r[1] = 9'd250;
				bar1_r[2] = 9'd350;
				bar1_r[3] = 9'd375;
					
				bar2_r[0] = 9'd350;
				bar2_r[1] = 9'd500;
				bar2_r[2] = 9'd350;
				bar2_r[3] = 9'd375;
				
				bar3_r[0] = 9'd10;
				bar3_r[1] = 9'd40;
				bar3_r[2] = 9'd170;
				bar3_r[3] = 9'd195;
				
				bar4_r[0] = 9'd250;
				bar4_r[1] = 9'd300;
				bar4_r[2] = 9'd70;
				bar4_r[3] = 9'd95;
			end
			2'd1:
			begin			
				bar1_r[0] = 9'd0;
				bar1_r[1] = 9'd130;
				bar1_r[2] = 9'd360;
				bar1_r[3] = 9'd480;
					
				bar2_r[0] = 9'd160;
				bar2_r[1] = 9'd290;
				bar2_r[2] = 9'd240;
				bar2_r[3] = 9'd360;
				
				bar3_r[0] = 9'd320;
				bar3_r[1] = 9'd450;
				bar3_r[2] = 9'd120;
				bar3_r[3] = 9'd240;
				
				bar4_r[0] = 9'd480;
				bar4_r[1] = 9'd610;
				bar4_r[2] = 9'd0;
				bar4_r[3] = 9'd120;
			end
			2'd2:
			begin
				bar1_r[0] = 9'd0;
				bar1_r[1] = 9'd150;
				bar1_r[2] = 9'd190;
				bar1_r[3] = 9'd450;
					
				bar2_r[0] = 9'd150;
				bar2_r[1] = 9'd250;
				bar2_r[2] = 9'd260;
				bar2_r[3] = 9'd450;
				
				bar3_r[0] = 9'd250;
				bar3_r[1] = 9'd470;
				bar3_r[2] = 9'd350;
				bar3_r[3] = 9'd450;
				
				bar4_r[0] = 9'd460;
				bar4_r[1] = 9'd520;
				bar4_r[2] = 9'd300;
				bar4_r[3] = 9'd450;
			end
			default:begin
				bar1_r[0] = 9'd0;
				bar1_r[1] = 9'd150;
				bar1_r[2] = 9'd190;
				bar1_r[3] = 9'd450;
					
				bar2_r[0] = 9'd150;
				bar2_r[1] = 9'd250;
				bar2_r[2] = 9'd260;
				bar2_r[3] = 9'd450;
				
				bar3_r[0] = 9'd250;
				bar3_r[1] = 9'd470;
				bar3_r[2] = 9'd350;
				bar3_r[3] = 9'd450;
				
				bar4_r[0] = 9'd460;
				bar4_r[1] = 9'd500;
				bar4_r[2] = 9'd290;
				bar4_r[3] = 9'd450;
				end
		endcase
			
	end

endmodule