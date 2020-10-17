.PHONY: clean all test run runtest

BIN_DIR = ./bin
BUILD_DIR = ./build
SRC_DIR = ./Snake
TEST_DIR = ./test
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/Snake.o 
	g++ $(FLAGS) $(BUILD_DIR)/Snake.o -o $(BIN_DIR)/main

$(BUILD_DIR)/Snake.o:
	g++ $(FLAGS) -c $(SRC_DIR)/Snake.cpp -o $(BUILD_DIR)/Snake.o
	
	
run: 
	./bin/main

clean:
	rm -f build/*.o
	rm -f bin/main
