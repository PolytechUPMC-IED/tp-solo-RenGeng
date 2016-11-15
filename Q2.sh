#!/bin/sh

liste=`ls $1|tr " " "\n"`
cd $1
for archive in $liste;
do
    tar xvzf $archive
done

# Question 3
# L'option -L de id3v2 permet d'obtenir la liste des genres
