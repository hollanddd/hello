# The default target
.PHONY: all
all: hello

# This rule tells make how to build hello from hello.cpp
hello: hello.cpp
	mkdir -p build
	g++ -o ./build/hello hello.cpp

# This rule tells make to delete hello and hello.o
.PHONY: clean
clean:
	rm -rf build
