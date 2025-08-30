module Full_Adder(input I1,I2,CIN,output SUM,COUT);

wire w1, w2, w3;

and (w1, I1,I2);
xor (w2,I1,I2);
and (w3, w2, CIN);
xor (SUM, w2, CIN);
or (COUT, w1, w3);
endmodule
