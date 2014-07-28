#!/bin/bash

rm images/*.ignore
rm pdfs/*.ignore

for i in images/*; do
  FILE=$(basename "$i")
  echo Converting $FILE
  convert images/$FILE/* -limit memory 128MiB -limit map 256MiB pdfs/$FILE.pdf 
done
