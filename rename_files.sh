#!/bin/bash

read -p "Enter the name you'd like for your files: " FILENAME

for i in pdfs/*; do
  FILE=$(basename "$i")
  NUMBER=`ls pdfs/$FILE | sed -e s/[^0-9]//g`
  mv pdfs/$FILE pdfs/$FILENAME\_$NUMBER\.pdf
done
