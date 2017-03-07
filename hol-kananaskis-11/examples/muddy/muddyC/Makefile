# Point this to where you unpacked mosml
MOSMLHOME=/usr

MOSMLBIN=$(MOSMLHOME)/bin
MOSMLRUNTIME=$(MOSMLHOME)/include
MOSMLC=$(MOSMLBIN)/mosmlc -c

# Your C compiler
CC=cc

BUDDYDIR=buddy
OPTS=-Wall -O3
CINCLUDE=-I$(MOSMLRUNTIME) -I./$(BUDDYDIR)/src
CFLAGS= -Dunix -O3 -fPIC $(CINCLUDE)
LIBS=-L./$(BUDDYDIR)/src -lbdd

CFILES=muddy.c
COBJS=muddy.o

BUDDYLIB=./$(BUDDYDIR)/src/libbdd.a


.SUFFIXES :
.SUFFIXES : .c .o

all:  muddy.so

muddy.so: $(COBJS) $(BUDDYLIB)
	ld -shared -o $@ $(COBJS) $(LIBS)

$(BUDDYLIB):
	cd $(BUDDYDIR); make


.c.o:
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f *.u? 
	rm -f *.o *.so
	rm -f Makefile.bak
	cd $(BUDDYDIR); make clean
