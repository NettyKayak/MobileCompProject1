

CC = gcc

all: oss worker

.SUFFIXES: .c .o

oss: oss.c memoryManagement.h
	gcc -g -Wall -lpthread -lrt -o oss oss.c -lm

worker: worker.c memoryManagement.h
	gcc -g -Wall -lpthread -lrt -lm -o worker worker.c

clean: 
	$(RM) oss worker *.txt *.o
