module half_adder (a,b,sum,cout);
        input a,b; 
        output sum,carry;
        xor (sum,a,b);
        and (cout,a,b);          
endmodule 
