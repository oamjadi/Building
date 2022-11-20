# Building
A repository for me to just store relevant files for my command line configuration or build related commands or descriptions.

##How Translation of Programs Work
A lot of my analysis is just paraphrasing the work of Computer Organization and Design by David Patterson and John Hennessy RISC-V Edition 2018. This was the textbook I used in EECS 112 Organization of Computers at UC Irvine. I took this class in 2021 or 2020 (exact term to be added later).

Firstly, I am using primarily section 2.12. And the great figure for the C Compiler is Figure 2.20. However, it's also reproduced on this website: https://www.cs.fsu.edu/~hawkes/cda3101lects/chap3/index.html?$$$F3.21b.html$$$

The compiler transforms C into assembly.

The assembler uses a symbol table to keep track of the address of all the labels which is necessary when it tries to convert assembly into binary. In the symbol table we also have descriptions of the object file header, which explains the size and position of the object files. The text segment contains the machine code. And the static data segment is the data allocated for the life of the program. Relocation information also identifies the instructions and data words that depend on absolute instructions.
