PRGS =  baseml codeml mcmctree  
CC = cc # cc, gcc, cl

CFLAGS = -O3
#CFLAGS = -fast

LIBS = -lm # -lM

all : $(PRGS)

baseml : baseml.c tools.c treesub.c treespace.c paml.h 
	$(CC) $(CFLAGS) -o $@ baseml.c tools.c $(LIBS)
codeml : codeml.c  tools.c treesub.c treespace.c paml.h 
	$(CC) $(CFLAGS) -o $@ codeml.c tools.c $(LIBS)
mcmctree : mcmctree.c  tools.c treesub.c treespace.c paml.h 
	$(CC) $(CFLAGS) -o $@ mcmctree.c tools.c $(LIBS)
