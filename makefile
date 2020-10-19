.PHONY: clean all test run runtest

BIN_DIR = ./bin
BUILD_DIR = ./build
SRC_DIR = ./Snake
TEST_DIR = ./Test
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/Snake.o 
	g++ $(FLAGS) $(BUILD_DIR)/Snake.o -o $(BIN_DIR)/main

$(BUILD_DIR)/Snake.o:
	g++ $(FLAGS) -c $(SRC_DIR)/Snake.cpp -o $(BUILD_DIR)/Snake.o
	
$(BUILD_DIR)/test.o:
	g++ $(FLAGS) -c $(TEST_DIR)/Test.cpp -o $(BUILD_DIR)/Test.o
	
run: 
	./bin/main
	
runtest:
	./bin/test

clean:
	rm -f build/*.o
	rm -f bin/main
	rm -f bin/test
