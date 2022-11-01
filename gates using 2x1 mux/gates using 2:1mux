module mux_gates(a,b,and_out,or_out,not_out,xor_out,nand_out,nor_out,xnor_out);
   input a,b;
   output reg and_out,or_out,not_out,xor_out,nand_out,nor_out,xnor_out ;
always @(a,b)
     begin
       if(a==1'b0)
         begin
           and_out = 1'b0;
           or_out = b;
           not_out = 1'b1;
           xor_out =b;
           nand_out=1;
           nor_out=(~b);
           xnor_out=(~b);
         end
       else
         begin
            and_out = b;
            or_out = 1'b1;
            not_out = 1'b0;
            xor_out = (~b);
            nand_out=(~b);
            nor_out=1;
            xnor_out=b;
         end
       end
endmodule
