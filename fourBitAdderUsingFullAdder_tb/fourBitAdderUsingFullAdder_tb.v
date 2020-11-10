
//Name: Nuthi Sriram 
//regno: CSE18083

module fourBitAdderUsingFullAdder_tb;
reg [3:0]a;
reg [3:0]b;
reg c_in;
wire [3:0]sum;
wire c_out;
integer i;
fourbit_adder mutt (.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
//initial begin
//a = 0;
//b = 0;
//c_in = 0;
//end
//always @ ( a, b, c_in )
//begin
//for ( i = 0; i < 16; i = i + 1 ) begin
//#50
//a=i;
//b=i+1;
//c_in=c_in+1;
//$monitor("At time %t a=%d, b=%d, cin=%d, sum=%d, cout=%d",$time,a,b,c_in,sum,c_out);
//end
           
//#10 $stop;
//end
initial
 begin
 a=6;
 b=3;
 c_in=1'b0;
#10
 a=9;
 b=5;
 c_in=1'b0;
#10
 
$finish;
end
initial
 $monitor("At time %t, a=%d, b=%d, c_in=%d   =sum=%d, c_out=%d", $time,a,b,c_in,sum,c_out);
endmodule
