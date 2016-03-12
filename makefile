assembler		:gram.o lex.o symtab.o
			cc -g gram.o lex.o symtab.o -o assembler -ll

gram.o			:gram.c lex.o symtab.o 
			cc -g -c -g gram.c

gram.c			:gram.y
			yacc -dv gram.y
			cp y.tab.c gram.c

gram.y			:gram.tok gram.prod
			cat gram.tok gram.prod > gram.y

lex.o			: gram.tok lex.c
			cc -g -c -g lex.c

lex.c			: lex.l
			lex lex.l
			cp lex.yy.c lex.c

symtab.
o		: 
			cc -g -c -g symTab.cpp

clean 			:
			rm assembler *.o gram.y gram.c lex.c y.tab.h y.tab.c y.output
