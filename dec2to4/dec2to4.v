

//2:4 decoder along with enable input implemented using case statement

module dec2to4(W, En, Y);
input [1:0] W;
input En;
output reg [0:3]Y;

always @(W or En)
begin
  case({En, W})  //Concatenating En with W
	3'b100:Y=4'b1000;
	3'b101:Y=4'b0100;
	3'b110:Y=4'b0010;
	3'b111:Y=4'b0001;
	default:Y=4'b0000;
   endcase
end
endmodule

