ID3=/home/sasl/shared/main3/env/tools
CC=g++
CFLAGS=-c -o
CLIBS=convert.cpp list.cpp genre.cpp id3v2.cpp
LDLIBS=${CLIBS:.cpp=.o}
TP=../../

all: id3v2

id3v2: ${LDLIBS}
	g++ -L${ID3}/lib -Wall -o $@ ${LDLIBS} -lid3 -lz

%.o: %.cpp
	g++ -I ${ID3}/include -DVERSION="\"${VERSION}\"" ${CFLAGS} $@ $<


clean:
	rm -f ${LDLIBS} id3v2

install: id3v2
	mkdir ${TP}bin
	cp id3v2 ${TP}bin
	mkdir ${TP}man
	mkdir ${TP}man/man1
	nroff -man ../id3v2.1 > ${TP}man/man1/id3v2.1

distclean: clean
	rm -f ${TP}bin/id3v2
	rm -f ${TP}man/man1/id3v2.1
	rm -d -f ${TP}bin ${TP}man/man1 ${TP}man

# Question 8

#On ajoute dans le terminale la ligne suivante: LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/sasl/shared/main3/env/tools/lib
#Si on veut que cela marche pour tous les terminal on ajoute export avant la variable

# Question 9
# On ajoute l'exécutable dans la variable d'environnement PATH avec la ligne suivante: PATH=$PATH:~/TP_solo/EnvDev/tp-solo-RenGeng/bin
