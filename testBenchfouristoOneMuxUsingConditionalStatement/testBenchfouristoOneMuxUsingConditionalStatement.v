//Test bench for 4:1 mux and  check the output for all the input combinations possible
//8 combos


module testBenchfouristoOneMuxUsingConditionalStatement;
reg A,B,C,D,sel0,sel1;
wire out;
fouristoOneMuxUsingConditionalStatement dut(.i0(A),.i1(B),.i2(C),.i3(D),.s0(sel0),.s1(sel1),.out(out));
initial
 begin
 A=1'b1;
 B=1'b0;
 C=1'b0;
 D=1'b0;
 sel0=1'b0;
 sel1=1'b0;
#10
 A=1'b0;
 B=1'b1;
 C=1'b0;
 D=1'b0;
 sel0=1'b0;
 sel1=1'b1;
#10
 A=1'b0;
 B=1'b0;
 C=1'b1;
 D=1'b0;
 sel0=1'b1;
 sel1=1'b0;
#10
 A=1'b0;
 B=1'b0;
 C=1'b0;
 D=1'b1;
 sel0=1'b1;
 sel1=1'b1;
#10
$finish;
end
initial
 $monitor("At time %t, A=%d, B=%d,C=%d,D=%d,sel0=%d,sel1=%d   =out=%d", $time,A,B,C,D,sel0,sel1,out);
endmodule