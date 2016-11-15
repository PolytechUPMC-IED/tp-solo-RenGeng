#!/bin/sh

id3v2 -L | grep $1 | cut -d":" -f 1

#Question 5
# L'option -g de id3v2 permet d'ajouter le genre musical à un fichier
