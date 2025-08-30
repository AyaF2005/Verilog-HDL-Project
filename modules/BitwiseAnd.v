module BitwiseAnd(input[3:0]A,B,output [3:0]Result);
//i created bitwise and by calling it 4 times using structural
// to operate the anding logic for each digit in A with each digit in B 
and(Result[0],A[0],B[0]);
and(Result[1],A[1],B[1]);
and(Result[2],A[2],B[2]);
and(Result[3],A[3],B[3]);
endmodule