CC = gcc
CFLAGS = -Wall -g

# dependencies for phase0 program, used in main
phase0: phase0.o listops.o
	$(CC) $(CFLAGS) -o phase0 phase0.o listops.o 

# dependencies for phase0.c 
phase0.o: phase0.c phase0.h 
	$(CC) $(CFLAGS) -c phase0.c 

# dependencies for listops.c 
listops.o: listops.c phase0.h 
	$(CC) $(CFLAGS) -c listops.c 

# run clean command
clean:
	/bin/rm phase0.o listops.o

