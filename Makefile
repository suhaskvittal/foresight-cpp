IDIR=include
CC=g++-11
CFLAGS=-fopenmp -std=c++11 
LDFLAGS=-I$(IDIR) -I$(IDIR)/boost_1_78_0

O_BUILD_DIR=bin
O_DEBUG_DIR=bin/debug

_DEPS=coupling.h dag.h routing.h foresight.h defs.h benchmark.h
DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ_BASE=dist.o layout.o routing.o routing_private.o circin.o foresight.o
_OBJ_MAIN=$(_OBJ_BASE) main.o
_OBJ_BENCH=$(_OBJ_BASE) bench_foresight.o
_OBJ_ALL=$(_OBJ_BASE) main.o bench_foresight.o
OBJ_MAIN=$(patsubst %,$(O_BUILD_DIR)/%,$(_OBJ_MAIN))
OBJ_BENCH=$(patsubst %,$(O_BUILD_DIR)/%,$(_OBJ_BENCH))
OBJ_DEBUG=$(patsubst %,$(O_DEBUG_DIR)/%,$(_OBJ_MAIN))


$(O_BUILD_DIR)/%.o: src/%.cpp $(DEPS)
	$(CC) $(CFLAGS) -O3 -c -o $@ $< $(LDFLAGS)
$(O_DEBUG_DIR)/%.o: src/%.cpp $(DEPS)
	$(CC) $(CFLAGS) -ggdb3 -c -o $@ $< $(LDFLAGS)

foresight: $(OBJ_MAIN)
	$(CC) -o $@ $^ $(CFLAGS) -O3 $(LDFLAGS)
debug: $(OBJ_DEBUG)
	$(CC) -o $@ $^ $(CFLAGS) -Og $(LDFLAGS)
benchmark: $(OBJ_BENCH)
	$(CC) -o $@ $^ $(CFLAGS) -O3 $(LDFLAGS) 
 
.PHONY: clean
clean:
	rm -f $(O_BUILD_DIR)/*.o
	rm -f $(O_DEBUG_DIR)/*.o
	rm -f foresight debug benchmark
