module tb;
reg a,b,enable;
wire [3:0]op;
decoder_2to4 dut(enable,a,b,op);
initial
begin
$monitor("enable=%b a=%b b=%b op=%b",enable,a,b,op);
enable=0;a=1'bx;b=1'bx;#5
enable=1;a=0;b=0;#5
enable=1;a=0;b=1;#10
enable=1;a=1;b=0;#5
enable=1;a=1;b=1;#5
$finish;
end
endmodule
