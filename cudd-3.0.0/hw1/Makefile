NAME = hw1_2b
CUDD_LIBS = ../cudd/.libs
C_SRC = ./src/$(NAME).c
C_BIN = ./src/$(NAME)
DOT = ./dot/$(NAME).dot
PDF = $(NAME).pdf



compile:
	gcc $(C_SRC) -o $(C_BIN) -std=gnu99 -I . -L $(CUDD_LIBS) -lcudd -lm

run:
	$(C_BIN)


d2pdf:
	dot -Tpdf $(DOT) > $ $(NAME).pdf

pdf:
	gnome-open $(PDF)
