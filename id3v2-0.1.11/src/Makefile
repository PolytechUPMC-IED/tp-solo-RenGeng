ID3=/home/sasl/shared/main3/env/tools
CC=g++
CFLAGS=-c -o
CLIBS=convert.cpp list.cpp genre.cpp id3v2.cpp
LDLIBS=${CLIBS:.cpp=.o}
BIN=../../bin

all: id3v2

id3v2: ${LDLIBS}
	g++ -L${ID3}/lib -Wall -o $@ ${LDLIBS} -lid3 -lz

%.o: %.cpp
	g++ -I ${ID3}/include -DVERSION="\"${VERSION}\"" ${CFLAGS} $@ $<


clean:
	rm -f ${LDLIBS} id3v2

install: id3v2
	mkdir ${BIN}
	cp id3v2 ${BIN}
