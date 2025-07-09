program: main.o num-to-ASCII.o
	ld -o program main.o num-to-ASCII.o

main.o: main.s
	as -o main.o main.s

num-to-ASCII.o: num-to-ASCII.s
	as -o num-to-ASCII.o num-to-ASCII.s

clean:
	rm -f *.o program