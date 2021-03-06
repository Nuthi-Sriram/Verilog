//Test bench for 2:4 decoder with enable input


module testBenchdec2to4;
reg [1:0] W;
reg En;
wire [0:3]Y;

dec2to4 dut(.W(W),.En(En),.Y(Y));
initial
 begin
 En=1'b1;
 W=2'b00;
#10
 En=1'b1;
 W=2'b01;
#10
 En=1'b1;
 W=2'b10;
#10
 En=1'b1;
 W=2'b11;
#10
 En=1'b0;
 W=2'b00;
#10
$finish;
end
initial
 $monitor("At time %t, En=%d, W=%d   =Y=%d", $time,En,W,Y);
endmodule