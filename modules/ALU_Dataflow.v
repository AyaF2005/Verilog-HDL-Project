module ALU_Dataflow(input[3:0]A,B,input Cin,Bin,input[2:0]OPcode,output [3:0]Result,output Cout,Bout);

wire [3:0]AND_OUT,OR_OUT,ADD_OUT,SUB_OUT;

//i called instance of the user gates that i previously created to take there output 
Addition inst1(A,B,Cin,ADD_OUT,Cout);
Subtraction inst2(A,B,Bin,SUB_OUT,Bout);
BitwiseAnd inst3(A,B,AND_OUT);
BitwiseOR inst4(A,B,OR_OUT);

//i assigned the addittion , subtraction ,logic gates output to the result output of the alu
//by checking the opcode for each
assign Result=(OPcode==3'b000)?ADD_OUT:// if opcode is 3'b000 set Result to the output of the ADD operation
(OPcode==3'b001)?SUB_OUT: // if opcode is 3'b001 set Result to the output of the SUB operation
(OPcode==3'b010)?AND_OUT:// if opcode is 3'b010 set Result to the output of the AND operation
(OPcode==3'b011)?OR_OUT:3'bz;// if opcode is 3'b011 set Result to the output of the OR operation
//the 3'bz is a dont care default case 
endmodule
A