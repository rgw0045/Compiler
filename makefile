all:
	$(MAKE) gram
	$(MAKE) lex
	g++ gram.tab.c lex.yy.c main.cpp

gram:
	bison -d gram.y

lex:
	flex lex.l
