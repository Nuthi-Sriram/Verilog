
module multibit_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg c_in;
wire [3:0]sum;
wire c_out;
integer i;
multibit_adder mutt (.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
initial begin
a = 0;
b = 0;
c_in = 0;
end
always @ ( a, b, c_in )
begin
for ( i = 0; i < 16; i = i + 1 ) begin
#50
a=i;
b=i+1;
c_in=c_in+1;
$monitor("At time %t a=%d, b=%d, cin=%d, sum=%d, cout=%d",$time,a,b,c_in,sum,c_out);
end
           
#10 $stop;
end
endmodule