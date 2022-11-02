module decoder_2to4(enable,a,b,op);
input enable;
input a,b;
output [3:0]op;
  assign op[0]=(enable & ~a & ~b);
  assign op[1]=(enable & ~a & b);
  assign op[2]=(enable & a & ~b);
  assign op[3]=(enable & a & b);
endmodule
