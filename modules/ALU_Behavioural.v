module ALU_Behavioural(input[3:0]A,B,input Cin,Bin,input[2:0]OPcode,output reg [3:0]Result,output Cout,Bout);

wire [3:0]AND_OUT,OR_OUT,ADD_OUT,SUB_OUT;

//i called instance of the user gates that i previously created to take there output 
Addition inst1(A,B,Cin,ADD_OUT,Cout);
Subtraction inst2(A,B,Bin,SUB_OUT,Bout);
BitwiseAnd inst3(A,B,AND_OUT);
BitwiseOR inst4(A,B,OR_OUT);


always @(*) begin

// Use a case statement to select the operation based on the opcode
case (OPcode)
        3'b000: Result=ADD_OUT;// if opcode is 3'b000 set Result to the output of the ADD operation
        3'b001: Result = SUB_OUT;// if opcode is 3'b001 set Result to the output of the SUB operation
        3'b010: Result = AND_OUT; // if opcode is 3'b010 set Result to the output of the AND operation
        3'b011: Result = OR_OUT; // if opcode is 3'b011 set Result to the output of the OR operation
        
endcase
end

endmodule