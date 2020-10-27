
//Test Bench for testing NOR Gate
module norgate_tb;
reg A,B;
wire C;
norgate dut(.x(A),.y(B),.z(C));
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
 $monitor("At time %t, A=%d NOR B=%d=C=%d", $time,A,B,C);
endmodule