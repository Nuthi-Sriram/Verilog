
//1:4 Demux implementation

module demuxOnetoFour(Din, sel, y0,y1,y2,y3);
input Din;
input [1:0] sel;
output reg y0,y1,y2,y3;

always @(Din or sel)
 begin
   case(sel)
    2'b00:begin
		y0=Din;
		y1=0;
		y2=0;
		y3=0;
	   end
    2'b01:begin
		y0=0;
		y1=Din;
		y2=0;
		y3=0;
	   end
    2'b10:begin
		y0=0;
		y1=0;
		y2=Din;
		y3=0;
	   end
    2'b11:begin
		y0=0;
		y1=0;
		y2=0;
		y3=Din;
	   end
   endcase
end 
endmodule