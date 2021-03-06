CC=gcc
CFLAGS=-g -fpic -O2 -Wall -Wextra -pedantic -std=c99 -c
SWIGFLAGS=-g -fpic -O2 -Wall -Wextra -pedantic -std=c99
SWIGSOFLAGS=$(SWIGFLAGS) -shared
SWIGIMPORT=-I/usr/include/python3.5/

all: spotless swig

spotless: main.o scanner.o parser.o
	$(CC) $^ -o $@

swig: main.o
	swig -python -py3 -O *.i
	$(CC) $(CFLAGS) $(SWIGIMPORT) *_wrap.c
	$(CC) $(SWIGSOFLAGS) $(SWIGIMPORT) main.o scanner.o parser.o main_wrap.o -o _spotless.so

%.o: %.c
	$(CC) $(CFLAGS) $<

clean:
	rm -f *.o *.so *.*~ spotless *_wrap.c *.py

.PHONY: all clean
