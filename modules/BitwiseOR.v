module BitwiseOR(input[3:0]A,B,output [3:0]Result);
//i created bitwise or by calling it 4 times using structural
// to operate the oring logic for each digit in A with each digit in B 
or(Result[0],A[0],B[0]);
or(Result[1],A[1],B[1]);
or(Result[2],A[2],B[2]);
or(Result[3],A[3],B[3]);
endmodule