module mux_case(s,ip,op);
  input [3:0]ip;
  input s;
  output reg op;
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
