module music(
input clk,
output speaker
);

reg [27:0] tone;
always @(posedge clk) tone <= tone+1;

wire [5:0] fullnote = tone[27:22];

wire [2:0] octave;
wire [3:0] note;
divby12 divby12(.numer(fullnote[5:0]), .quotient(octave), .remain(note));
/*
  512-1;// A 
  483-1; // A#/Bb
  456-1; // B 
  431-1; // C 
  406-1; // C#/Db
  384-1; // D 
  362-1; // D#/Eb
  342-1; // E 
  323-1; // F 
  304-1; // F#/Gb
  287-1; // G 
  271-1; // G#/Ab

*/
reg [8:0] clkdivider;
always @(note) begin
case(note)
 0: clkdivider = 271-1;
 1: clkdivider = 483-1; 
 2: clkdivider = 483-1;  
 3: clkdivider = 512-1;  
 4: clkdivider = 406-1;
 5: clkdivider = 384-1;
 6: clkdivider = 287-1; 
 7: clkdivider = 431-1;  
 8: clkdivider = 431-1;  
 9: clkdivider = 304-1; 
 10: clkdivider = 287-1;
 11: clkdivider = 287-1;
 default: clkdivider=0;
endcase
end

reg [8:0] counter_note;
always @(posedge clk) if(counter_note==0) counter_note <= clkdivider; else counter_note <= counter_note-1;

reg [7:0] counter_octave;
always @(posedge clk)
if(counter_note==0)
begin
if(counter_octave==0)
 counter_octave <= (octave==0?255:octave==1?127:octave==2?63:octave==3?31:octave==4?15:7);
else
 counter_octave <= counter_octave-1;
end

reg speaker;
always @(posedge clk) if(counter_note==0 && counter_octave==0) speaker <= ~speaker;
endmodule 	