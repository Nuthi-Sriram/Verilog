//Test Bench for testing XOR Gate
module xorgate_tb;
reg A,B;
wire C;
xorgate dut(.x(A),.y(B),.z(C));
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
 $monitor("At time %t, A=%d XOR B=%d=C=%d", $time,A,B,C);
endmodule
