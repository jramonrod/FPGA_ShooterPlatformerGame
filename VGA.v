module VGA(
  input clk50mhz,
  input reset,
  input left[1:0],
  input right[1:0],
  input shot[1:0],
  input up[1:0],
  output reg sound,
  output reg vsync,
  output reg hsync,
  output reg[5:0] color
);
  reg[9:0] disparo_g[1:0];
  reg[9:0] disparo_y[1:0];
  reg[9:0] movement[1:0];
  reg[9:0] height[1:0];
  reg[9:0] hcount;
  reg[9:0] vcount;
  reg[1:0] frameCounter[1:0];
  reg[1:0] shotCounter[1:0];
  reg dir_disparo[1:0];

  reg[3:0] secondCounter[1:0];
  reg[4:0] heightCount[1:0];

	reg[1:0] health[1:0];
  reg isJumping[1:0];
  reg isFalling[1:0];
  reg[2:0] stage_Chosen;
  reg[2:0] character_Chosen[1:0];


  reg disparo_g_c[1:0];
  reg[5:0] disparo_cont[1:0];

	reg over[1:0];

  reg clk;

  always @ (posedge clk50mhz)
    clk = !clk;

  reg[11:0] address[9:0];
  wire[5:0] data[9:0];
  wire gunS[1:0];
  wire themeS;
  reg gunSounds[1:0];
  reg[7:0] shotSFrames[1:0];
  
  Sprite_G gunz (address[0], data[0]);
  Sprite_A ass(address[1], data[1]);
  music soun(clk,themeS);
  gunSound beep(clk,gunS[0]);
	gunSoun beep1(clk,gunS[1]);
	Heart heart1(address[2], data[2]);
	Heart heart2(address[3], data[3]);
	Heart heart3(address[4], data[4]);
	Heart heart4(address[5], data[5]);
	Heart heart5(address[6], data[6]);
	Heart heart6(address[7], data[7]);
	LFDWW lfdwin(address[8], data[8]);	
	GunW gunwin(address[9], data[9]);
	
	initial begin
		health[0]=2'b11;
		health[1]=2'b11;
		movement[0]=570;
		movement[1]=0;
		stage_Chosen=2'b0;
		character_Chosen[1]=2'b0;
		character_Chosen[0]=2'b0;
	end
  always @(posedge clk)
    begin
      if(reset)begin
      {hcount, vcount, color} = {10'd0, 10'd0, 3'b0};
			health[0]=2'b11;
				health[1]=2'b11;
				movement[0]=570;
				movement[1]=0;
				height[0] =0;
				height[1] = 0;
				over[0] =0;
				over[1] =0;
		end
      else begin   
		sound=themeS;
		if(gunSounds[0]&&shotSFrames[0]<30)begin
			sound=gunS[0];
		end
		else if(shotSFrames[0]>=30)begin
				shotSFrames[0]=0;
				gunSounds[0]=0;
			end
		if(gunSounds[1]&&shotSFrames[1]<30)begin
			sound=gunS[1];
		end
		else if(shotSFrames[1]>=30)begin
				shotSFrames[1]=0;
				gunSounds[1]=0;
		end
        if(hcount == 799)
          begin
            hcount = 0;
            if(vcount == 524)
              begin
                if(frameCounter[0] != 2)begin
                  frameCounter[0] = frameCounter[0] + 1'b1;
                end
                if(secondCounter[0]!=3)begin
                  secondCounter[0]= secondCounter[0]+1'b1;
                end
                if(secondCounter[1]!=3)begin
                  secondCounter[1]= secondCounter[1]+1'b1;
                end
                if(frameCounter[1] != 2)begin
                  frameCounter[1] = frameCounter[1] + 1'b1;
                end
                if(shotCounter[0] != 2)begin
                  shotCounter[0] = shotCounter[0] + 1'b1;
                end
                if(shotCounter[1] != 2)begin
                  shotCounter[1] = shotCounter[1] + 1'b1;
                end
					 if(gunSounds[0])begin
					 shotSFrames[0]= shotSFrames[0]+1'b1;
					 end
					 if(gunSounds[1])begin
					 shotSFrames[1]= shotSFrames[1]+1'b1;
					 end
                vcount=0;
              end
            else
              vcount= vcount+1'b1;
          end
        else
          hcount= hcount+1'b1;
        //ifhcount==799 end
        if(vcount >= 490 && vcount < 492)
          vsync=0;
        else
          vsync=1;
        //ifvcount
        if(hcount >= 656 && hcount < 752)
          hsync=0;
        else
          hsync=1;
        //ifhcount

        if(hcount < 640 && vcount <480)
          begin
				if(stage_Chosen==0 || character_Chosen==0)
				begin
					color=1'b111111;
				end
				else
				begin
					//DISPLAY STATS HER4E
					color = 6'b111111;
	//////////////////BAR LOGIC BEGIN////////////////////////////////////////  

					  
					if (hcount>=100 && hcount<250  && vcount > 350 && vcount< 375)
					  color = 6'b001100;

					if (hcount>=350 && hcount<500  && vcount > 350 && vcount< 375)
					  color = 6'b001100;

					if (hcount>=20 && hcount<70  && vcount > 270 && vcount< 295)
					  color = 6'b001100;

					if (hcount>=550 && hcount<600  && vcount > 270 && vcount< 295)
					  color = 6'b001100;

					if (hcount>=100 && hcount<500  && vcount > 150 && vcount< 175)
					  color = 6'b001100;

					if (vcount > 450)
					  color = 6'b001100;
	//////////////////BAR LOGIC END////////////////////////////////////////

	//////////////////////////GUNZ LOGIC BEGIN////////////////////////////
					if(left[0] && movement[0]>1 && frameCounter[0] == 2)
					  begin
						 movement[0]= movement[0] - 3'd5;
						 frameCounter[0]=0;
						 if(!disparo_g_c[0])
							dir_disparo[0]=0;
					  end
					if(right[0] && movement[0]<619 && frameCounter[0] == 2)
					  begin
						 movement[0]= movement[0] + 3'd5;
						 frameCounter[0]=0;
						 if(!disparo_g_c[0])
							dir_disparo[0]=1;
					  end

					

	///////////////////////////JUMPING LOGIC BEGIN///////////////////////////
					if(up[0] && secondCounter[0]==3 && !(isJumping[0]) && !(isFalling[0]))
					  begin
						 isJumping[0]=1;
						 isFalling[0]=0;
					  end
					if(isJumping[0] && secondCounter[0]==3)
					  begin
						 if(heightCount[0]>=25)
							begin
							  isJumping[0]=0;
							  isFalling[0]=1;
							  heightCount[0]=0;
							end
						 else
							begin
							  height[0]= height[0] - 3'd5;
							  heightCount[0]= heightCount[0]+1'b1;
							  secondCounter[0]=0;
							end
					  end

	////////////////////////////////////JUMPING LOGIC END////////////////////
	////////////////////////////////////FALLINGING LOGIC BEGIN////////////////////
					else if(isFalling[0] && secondCounter[0]==3)
					  begin
						 isJumping[0]=0;
						 height[0]= height[0] + 3'd5;
						 secondCounter[0]=0;
					  end
	////////////////////////////////////FALLINGING LOGIC END////////////////////
	/////////////////////LIVES LOGIC END////////////////////////////////////////////
						if(health[0]>=1)begin
							if(hcount>=550 && hcount<580  && vcount >= 0 && vcount< 30)
						  begin
							 color = data[2];
							 address[2] = address[2] + 12'd1;
							 if(hcount==579 && vcount ==29)
								address[2]=12'd0;
						  end
						  if(health[0]>=2)
							begin
							  if (hcount>=580 && hcount<610  && vcount >= 0 && vcount< 30)
							  begin
								 color = data[3];
								 address[3] = address[3] + 12'd1;
								 if(hcount==609 && vcount ==29)
									address[3]=12'd0;
							  end
							  if(health[0]==3) begin
								  if (hcount>= 610&& hcount<640  && vcount >= 0 && vcount< 30)
								  begin
									 color = data[4];
									 address[4] = address[4] + 12'd1;
									 if(hcount==639 && vcount ==29)
										address[4]=12'd0;
								  end
							  end
							end
						end
						if(health[1]>=1)
						begin
						  if(hcount>=0 && hcount< 30 && vcount >= 0 && vcount< 30)
						  begin
							 color = data[5];
							 address[5] = address[5] + 12'd1;
							 if(hcount==29 && vcount ==29)
								address[5]=12'd0;
						  end
						  if(health[1]>=2)
						  begin
							  if (hcount>=30 && hcount< 60 && vcount >= 0 && vcount< 30)
							  begin
								 color = data[6];
								 address[6] = address[6] + 12'd1;
								 if(hcount==59 && vcount ==29)
									address[6]=12'd0;
							  end
							  if(health[1]==3)
							  begin
								  if (hcount>=60 && hcount< 90 && vcount >= 0 && vcount< 30)
								  begin
									 color = data[7];
									 address[7] = address[7] + 12'd1;
									 if(hcount==89 && vcount ==29)
										address[7]=12'd0;
								  end
								end
							end
						end
	/////////////////////LIVES LOGIC END////////////////////////////////////////////
					if (hcount>=movement[0] && hcount< (movement[0]+44) && vcount >= height[0] && vcount< (height[0]+70))
					  begin
						 color = data[0];
						 address[0] = address[0] + 12'd1;
						 if(hcount==(movement[0]+42) && vcount ==(height[0]+69))
							address[0]=12'd0;
					  end
					 if (hcount==(movement[0]+22)&& vcount == (height[0]+71))
					  begin
						 if(color== 6'b001100)
							isFalling[0]=0;
						 else
							isFalling[0]=1;
					  end
	//////////////////////////GUNZ LOGIC END////////////////////////////
	//////////////////////////LFDW LOGIC END////////////////////////////
					if(left[1] && movement[1]>1 && frameCounter[1] == 2)
					  begin
						 movement[1]= movement[1] - 3'd5;
						 frameCounter[1]=0;
						 if(!disparo_g_c[1])
							dir_disparo[1]=0;
					  end
					if(right[1] && movement[1]<619 && frameCounter[1] == 2)
					  begin
						 movement[1]= movement[1] + 3'd5;
						 frameCounter[1]=0;
						 if(!disparo_g_c[1])
							dir_disparo[1]=1;
					  end

					
	///////////////////////////JUMPING LOGIC BEGIN///////////////////////////
					if(up[1] && secondCounter[1]==3 && !(isJumping[1]) && !(isFalling[1]))
					  begin
						 isJumping[1]=1;
						 isFalling[1]=0;
					  end
					if(isJumping[1] && secondCounter[1]==3)
					  begin
						 if(heightCount[1]>=25)
							begin
							  isJumping[1]=0;
							  isFalling[1]=1;
							  heightCount[1]=0;
							end
						 else
							begin
							  height[1]= height[1] - 3'd5;
							  heightCount[1]= heightCount[1]+1'b1;
							  secondCounter[1]=0;
							end
					  end
	////////////////////////////////////JUMPING LOGIC END////////////////////
					else if(isFalling[1] && secondCounter[1]==3)
					  begin
						 isJumping[1]=0;
						 height[1]= height[1] + 3'd5;
						 secondCounter[1]=0;
					  end
	////////////////////////////////////FALLINGING LOGIC END////////////////////

					if (hcount>=movement[1] && hcount< (movement[1]+44) && vcount >= height[1] && vcount< (height[1]+70))
					  begin
						 color = data[1];
						 address[1] = address[1] + 12'd1;
						 if(hcount==(movement[1]+42) && vcount ==(height[1]+69))
							address[1]=12'd0;
					  end 
	//////////////////BAR LOGIC BEGIN////////////////////////////////////////  

					  
					if (hcount>=100 && hcount<250  && vcount > 350 && vcount< 375)
					  color = 6'b001100;

					if (hcount>=350 && hcount<500  && vcount > 350 && vcount< 375)
					  color = 6'b001100;

					if (hcount>=20 && hcount<70  && vcount > 270 && vcount< 295)
					  color = 6'b001100;

					if (hcount>=550 && hcount<600  && vcount > 270 && vcount< 295)
					  color = 6'b001100;

					if (hcount>=100 && hcount<500  && vcount > 150 && vcount< 175)
					  color = 6'b001100;

					if (vcount > 450)
					  color = 6'b001100;
	//////////////////BAR LOGIC END////////////////////////////////////////


	//////////////////SHOT LOGIC BEGIN////////////////////////////////////////
				if(shot[0] && movement[0]>0 && shotCounter[0] ==2 && !disparo_g_c[0]) begin
						gunSounds[0]=1;
					disparo_g_c[0]=1;
					  shotCounter[0]=0;
					  if(dir_disparo[0])
						disparo_g[0] = movement[0] +45;
						else
						disparo_g[0]=movement[0]-30;
					  disparo_y[0] = height[0]+25;
					  disparo_cont[0]=0;
					end

					if(disparo_g_c[0] && shotCounter[0]==2)
					  begin
						 if(disparo_cont[0]<320) begin
							if(dir_disparo[0])
							  disparo_g[0] = disparo_g[0]+3'd7;
							else
							  disparo_g[0] = disparo_g[0]-3'd7;
							disparo_cont[0]= disparo_cont[0]+1'b1;
							shotCounter[0]=0;
						 end
					  end

					if(disparo_g_c[0] && disparo_g[0] > 640)
					  begin
						 disparo_cont[0]=0;
						 disparo_g_c[0]=0;
						 shotCounter[0]=0;
					  end

					if (disparo_g_c[0] && hcount>=disparo_g[0] && hcount< (disparo_g[0]+25) && vcount >= disparo_y[0] && vcount<= (disparo_y[0] +10))
					  begin
						if(color==3'b111 || color==3'b010 || color==3'b011)
						 color = 3'b011;
						 else begin
							health[1]=health[1]-1'b1;
							if(health[1] == 0)
								over[0] = 1;
							disparo_cont[0]=0;
							disparo_g_c[0]=0;
							shotCounter[0]=0;
						 end
					  end
					  
	//////////////////SHOT LOGIC END//////////////////////////////////////
					if(shot[1] && movement[1]>0 && shotCounter[1] ==2 && !disparo_g_c[1]) begin
						gunSounds[1]=1;
					disparo_g_c[1]=1;
					  shotCounter[1]=0;
					  if(dir_disparo[1])
						disparo_g[1] = movement[1] +45;
						else
						disparo_g[1]=movement[1]-30;
					  disparo_y[1] = height[1]+25;
					  disparo_cont[1]=0;
					end

					if(disparo_g_c[1] && shotCounter[1]==2)
					  begin
						 if(disparo_cont[1]<320) begin
							if(dir_disparo[1])
							  disparo_g[1] = disparo_g[1]+3'd7;
							else
							  disparo_g[1] = disparo_g[1]-3'd7;
							disparo_cont[1]= disparo_cont[1]+1'b1;
							shotCounter[1]=0;
						 end
					  end

					if(disparo_g_c[1] && disparo_g[1] > 640)
					  begin
						 disparo_cont[1]=0;
						 disparo_g_c[1]=0;
						 shotCounter[1]=0;
					  end

					if (disparo_g_c[1] && hcount>=disparo_g[1] && hcount< (disparo_g[1]+25) && vcount >= disparo_y[1] && vcount<= (disparo_y[1] +10))
					  begin
						if(color==3'b111 || color==3'b010 || color==3'b011)
						 color = 3'b011;
						 else begin
							health[0]=health[0]-1'b1;
							if(health[0] == 0)
								over[1] = 1;
							disparo_cont[1]=0;
							disparo_g_c[1]=0;
							shotCounter[1]=0;
						 end
					  end

				






					if (hcount==(movement[1]+22)&& vcount == (height[1]+71))
					  begin
						 if(color== 6'b001100)
							isFalling[1]=0;
						 else
							isFalling[1]=1;
					  end


	//////////////////////////LFDW LOGIC END////////////////////////////
				
				
				if (over[1] == 1)
				begin
					color = 6'b111111;
					 if (hcount>=288 && hcount< 352 && vcount >= 208 && vcount< 272)
						  begin
							 color = data[8];
							 address[8] = address[8] + 12'd1;
							 if(hcount==351 && vcount ==271)
								address[8]=12'd0;
						  end
				end
				
				if (over[0] == 1)
				begin
					color = 6'b000000;
					 if (hcount>=288 && hcount< 352 && vcount >= 208 && vcount< 272)
						  begin
							 color = data[9];
							 address[9] = address[9] + 12'd1;
							 if(hcount==351 && vcount ==271)
								address[9]=12'd0;
						  end
				end
			end
        end
        else
          color = 6'b000000;
      end
    end
endmodule