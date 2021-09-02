CC=gcc
COPTIONS=-Wall



all:clean linklist

clean:
	rm *.o linklist

test: all
	./linklist
	
linklist: test.o linklist.o
	$(CC) $(COPTIONS) $? -o $@

test.o: test.c linklist.h
	$(CC) $(COPTIONS) test.c -c

linklist.o: linklist.c 
	$(CC) $(COPTIONS) $? -c