IDIR=include
CC=g++-11
CFLAGS=-I$(IDIR) -I$(IDIR)/boost_1_78_0 -fopenmp -std=c++11

ODIR=bin
ODEBUGDIR=bin/debug

_DEPS=coupling.h dag.h routing.h foresight.h defs.h
DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))
_OBJ=dist.o layout.o routing.o routing_private.o circin.o main.o
OBJ=$(patsubst %,$(ODIR)/%,$(_OBJ))

OBJDEBUG=$(patsubst %,$(ODEBUGDIR)/%,$(_OBJ))

$(ODIR)/%.o: src/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -O3
$(ODEBUGDIR)/%.o: src/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -ggdb3 -Og

foresight: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) -O3
debug: $(OBJDEBUG)
	$(CC) -o $@ $^ $(CFLAGS) -ggdb3 -Og

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o \
	rm -f $(ODEBUGDIR)/*.o \
    	rm foresight debug
