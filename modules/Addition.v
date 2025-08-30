module Addition(input[3:0]A,B,input Cin,output [3:0]Result,output Cout);

wire [2:0]Carry;
//i created 4 instance of the full adder module to perform the addition for 4 bits using structural
Full_Adder F1(A[0],B[0],Cin,Result[0],Carry[0]);
Full_Adder F2(A[1],B[1],Carry[0],Result[1],Carry[1]);
Full_Adder F3(A[2],B[2],Carry[1],Result[2],Carry[2]);
Full_Adder F4(A[3],B[3],Carry[2],Result[3],Cout);

endmodule