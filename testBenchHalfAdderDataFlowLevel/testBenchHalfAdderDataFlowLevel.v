//Test bench for half adder


module testBenchHalfAdderDataFlowLevel;
reg A,B;
wire Sum, Carry;
HalfAdderGateLevel dut(.A(A),.B(B),.Sum(Sum),.Carry(Carry));
initial
 begin
 A=1'b0;
 B=1'b0;
#10
 A=1'b0;
 B=1'b1;
#10
 A=1'b1;
 B=1'b0;
#10
 A=1'b1;
 B=1'b1;
#10
$finish;
end
initial
 $monitor("At time %t, A=%d, B=%d, Sum=%d, Carry=%d", $time,A,B,Sum, Carry);
endmodule