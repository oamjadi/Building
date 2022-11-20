# Building
A repository for me to just store relevant files for my command line configuration or build related commands or descriptions.

## How Translation of Programs Work
A lot of my analysis is just paraphrasing the work of Computer Organization and Design by David Patterson and John Hennessy RISC-V Edition 2018. This was the textbook I used in EECS 112 Organization of Computers at UC Irvine. I took this class in 2021 or 2020 (exact term to be added later).

Firstly, I am using primarily section 2.12. And the great figure for the C Compiler is Figure 2.20. However, it's also reproduced on this website: https://www.cs.fsu.edu/~hawkes/cda3101lects/chap3/index.html?$$$F3.21b.html$$$

### C
The compiler transforms C into assembly.

The assembler uses a symbol table to keep track of the address of all the labels which is necessary when it tries to convert assembly into binary. In the symbol table we also have descriptions of the object file header, which explains the size and position of the object files. The text segment contains the machine code. And the static data segment is the data allocated for the life of the program. Relocation information also identifies the instructions and data words that depend on absolute instructions.

Linker takes independently assembled machine language and stitches them together. It really sets up the addresses of data and instruction labels and patches internal and external references. There's a good example on page 128.

Loader: The loader reads the executable and creates an address space large enough for text and data and copies the instructions and data into memory. It copies the paramters onto the stack and intializes the register and the stack pointer. It sets up the start routine and the exit routine.

Dynamically Linked Libraries: These are not linked and loaded until the program begins executing. It follows a process of lazy linkage described on page 131.

### Java
To be expanded on more later
Figure 2.22 from the textbook or: slide 24 of https://slideplayer.com/slide/15774938/

It compiles Java into Java bytecode, which is meant to resemble Java code very closely with very little modification and virtually no optimization like in C. Java programs are distributed in binary versions of this bytecode. The JVM reads the bytecode and runs it in the JVM as if were assembly code. The Just in Time Compilers try to speed up Java interpretation by identifying hot methods and compiling into local native code. And this is getting good, so the speed delta between C and Java is reduced by this implementation.

