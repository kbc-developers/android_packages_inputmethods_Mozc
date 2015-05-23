#!/bin/sh

find . -type f -name *.java | while read FILE
do
    cp $FILE $FILE.bak
    sed -e "s/resources\.R/R/g" $FILE.bak > $FILE
done
