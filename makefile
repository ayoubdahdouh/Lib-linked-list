CC=gcc
COPTIONS=-Wall


all:linklist
	./linklist

linklist: test.o linklist.o
	$(CC) $(COPTIONS) $? -o $@

test.o: test.c linklist.h
	$(CC) $(COPTIONS) test.c -c

linklist.o: linklist.c 
	$(CC) $(COPTIONS) $? -c