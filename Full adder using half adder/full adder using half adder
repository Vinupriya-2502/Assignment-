module fa(a,b,c,sum,cout);
  input a,b,c;
  output sum,cout;
  wire w1,w2;
  ha a(a,b,a1,w1);
  ha b(a1,c,sum,w2);
  or (cout,w1,w2);
endmodule

module ha(a,b,sum,cout);
  input a,b;
  output sum,cout;
  assign sum=a^b;
  assign cout=a&b;
endmodule
