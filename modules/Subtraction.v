module Subtraction(input[3:0]A,B,input Bin,output [3:0]Result,output Bout);

wire [2:0]Borrow;
//i created 4 instance of the full adder module to perform the subtraction for 4 bits using structural
//and negated the B to do ones complement and in the waveform 
//i give to Bin 1 so it do 2s complement
Full_Adder f1(A[0],~B[0],Bin,Result[0],Borrow[0]);
Full_Adder f2(A[1],~B[1],Borrow[0],Result[1],Borrow[1]);
Full_Adder f3(A[2],~B[2],Borrow[1],Result[2],Borrow[2]);
Full_Adder f4(A[3],~B[3],Borrow[2],Result[3],Bout);

endmodule
