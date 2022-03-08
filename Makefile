IDIR=include
CC=g++-11
CFLAGS=-fopenmp -std=c++11 
LDFLAGS=-I$(IDIR) -I$(IDIR)/boost_1_78_0

O_BUILD_DIR=bin
O_DEBUG_DIR=bin/debug

_DEPS=coupling.h dag.h routing.h foresight.h defs.h
DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ=dist.o layout.o routing.o routing_private.o circin.o main.o
OBJ_BUILD=$(patsubst %,$(O_BUILD_DIR)/%,$(_OBJ))
OBJ_DEBUG=$(patsubst %,$(O_DEBUG_DIR)/%,$(_OBJ))


$(O_BUILD_DIR)/%.o: src/%.cpp $(DEPS)
	$(CC) $(CFLAGS) -O3 -c -o $@ $< $(LDFLAGS)
$(O_DEBUG_DIR)/%.o: src/%.cpp $(DEPS)
	$(CC) $(CFLAGS) -ggdb3 -c -o $@ $< $(LDFLAGS)

foresight: $(OBJ_BUILD)
	$(CC) -o $@ $^ $(CFLAGS) -O3 $(LDFLAGS)
debug: $(OBJ_DEBUG)
	$(CC) -o $@ $^ $(CFLAGS) -Og $(LDFLAGS)
build:
	python3 setup.py build_ext --inplace
 
.PHONY: clean
clean:
	rm -f $(O_BUILD_DIR)/*.o
	rm -f $(O_DEBUG_DIR)/*.o
	rm -f foresight debug
	rm -f src/pymodule/foresight_wrap.*
	rm -f src/pymodule/foresight.py
	rm -rf distribution ForeSight.egg-info
	rm -rf build
	rm foresight*.so
