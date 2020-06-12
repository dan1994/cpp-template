INCLUDE_DIR=include
SOURCE_DIR=src
BINARY_DIR=bin
OBJECTS_DIR=${BINARY_DIR}/objects

CXX=g++
CXXFLAGS=-std=c++2a -Wall -Wextra -Werror -I${INCLUDE_DIR} -O0 -g
LINKFLAGS=

SOURCES=$(shell find src -iname "*.cpp")
OBJECTS=$(patsubst ${SOURCE_DIR}/%.cpp,${OBJECTS_DIR}/%.o,${SOURCES})

PROGRAM_NAME=main
PROGRAM_PATH=${BINARY_DIR}/${PROGRAM_NAME}

.PHONY: all
all: ${PROGRAM_PATH}

${PROGRAM_PATH}: ${OBJECTS}
	@mkdir -p $(@D)
	${CXX} ${LINKFLAGS} ${OBJECTS} -o $@

${OBJECTS_DIR}/%.o: ${SOURCE_DIR}/%.cpp makefile
	@mkdir -p $(@D)
	${CXX} ${CXXFLAGS} -c $< -o $@

.PHONY: bear
bear: clean
	bear make

.PHONY: clean
clean:
	rm -rf ${BINARY_DIR}
