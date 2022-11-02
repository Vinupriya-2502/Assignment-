module mux_8to1(op, ip, s);
input [7:0] ip;
input [2:0] s;
output op;
wire w1, w2, w3, w4, w5;
mux_4to1 a(w1, ip[3:0], s[1:0]);
mux_4to1 b(w2, ip[7:4], s[1:0]);
not n(w3, s[2]);
and an1(w4, w1, w3);
and an2(w5, w2, s[2]);
nor n1(op, w4, w5);
endmodule


module mux_4to1(op, ip, s);
output reg op;
input[3:0] ip;
input [1:0] s;
always @(*)
begin
	case(s)
		2'b00 : op=ip[0];
		2'b01 : op=ip[1];
		2'b10 : op=ip[2];
		2'b11 : op=ip[3];
	endcase
end
endmodule
