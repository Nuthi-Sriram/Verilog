
//Implementation of mux using if and else conditional statements (always)
module mux_using_if(
din_0,
din_1,
sel,
mux_out
);

input din_0,din_1,sel;
output reg mux_out;

always@(sel or din_0 or din_1)
begin
   if(sel == 1'b0)

      mux_out=din_0;

   else 

       mux_out=din_1;

end

endmodule