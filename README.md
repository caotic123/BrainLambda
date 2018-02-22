# BrainLambda
Yet a new form the describe BrainFuck.

# What is BrainLambda?
BrainLambda is a fully lambda calculus translator for Brainfuck language.

# How Works?
BrainLambda catch instructions of BrainFuck Language ```+ - > < [ ]``` and interpreter this instructions of BrainLambda also are functions.

# How was implemented?
Was impelemented for BiwaScheme interpreter.
Some details:

 * The instruction also are functions
 * BrainLambda uses list for memory and almost everything of structure of interpreter also are list.
 * BrainLambda NOT implement a parser or something like that
 * The main memory is a list where let until n so... (list (...n...)) inside the list has other list so.... (list (list(ID, VALUE)..n..list(ID, VALUE)) where  the first value is a position of memory and second is value of cell.
 * The Anonymous function of instructions that exist can be discard
 * Each lambda function only received one argument
