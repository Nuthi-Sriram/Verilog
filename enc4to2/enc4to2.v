


//4:2 encoder implemented using case statement

module enc4to2(W, Y);
input [3:0] W;
output reg [1:0]Y;

always @(W)
begin
  case(W) 
	4'b0001:Y=2'b00;
	4'b0010:Y=2'b01;
	4'b0100:Y=2'b10;
	4'b1000:Y=2'b11;
   endcase
end
endmodule
