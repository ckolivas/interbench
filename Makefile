CC=gcc
CFLAGS=-W -Wall -g -O2 -s -pipe
LDFLAGS=-lrt -lm -pthread

interbench: interbench.o hackbench.o -lm
interbench.o: interbench.c
hackbench.o: hackbench.c

clean:
	rm -f *.o interbench interbench.read interbench.write interbench.loops_per_ms *~
