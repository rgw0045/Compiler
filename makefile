all:
	$(MAKE) gram
	$(MAKE) lex
	g++ y.tab.c lex.yy.c main.cpp

gram:
	bison -d gram.y

lex:
	flex lex.l
