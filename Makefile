CC=g++
CFLAGS=-std=c++20 -Wall -pedantic
SRCS := $(wildcard src/*.cc)
MAMBA_INCLUDE=$(shell python3 _getenv.py)
INCLUDE_DIR=-Iinclude -I$(MAMBA_INCLUDE)
OBJS := $(patsubst %.cc, %.o, $(SRCS))

all:
	$(CC) $(CFLAGS) $(INCLUDE_DIR) $(SRCS)



clean:
	rm *.o *.out
