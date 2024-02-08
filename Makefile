all: sudoku-32

OPT_LEVEL      = -O0
MAKE_32_BIT    = -m32
NO_PIE	       = -no-pie
DEBUG	       = -g
NO_LIB_CHECK   = -D_FORTIFY_SOURCE=0
NO_STACK_CHECK = -fno-stack-protector
EXEC_STACK     = -z execstack

CFLAGS         =$(OPT_LEVEL) \
		$(DEBUG) \
		$(MAKE_32_BIT) \
		$(NO_PIE) \
		$(NO_LIB_CHECK) \
		$(NO_STACK_CHECK) \
		$(EXEC_STACK)


sudoku-32: sudoku.c
	gcc sudoku.c -o sudoku-32 $(CFLAGS)

hello: hello.c
	gcc hello.c -o hello $(CFLAGS)

asm: sudoku.c
	gcc sudoku.c -S \
		$(OPT_LEVEL) \
		$(MAKE_32_BIT) \
		$(NO_PIE) \
		$(NO_LIB_CHECK) \
		$(NO_STACK_CHECK)


clean:
	rm -rf sudoku-32
