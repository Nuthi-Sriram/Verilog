
// Implementation of mux using switch case

module mux_using_case(
din_0,
din_1,
sel,
mux_out
);

input din_0,din_1,sel;
output reg mux_out;

always@(sel or din_0 or din_1)
begin
     case(sel)
	1'b0:mux_out=din_0;
	1'b1:mux_out=din_1;
      endcase
end

endmodule