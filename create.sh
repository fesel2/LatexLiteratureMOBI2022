#!/bin/sh

OUTPUT_DIR="./temp"
RESULT_DIR="./result"
FILE="protocol"

mkdir $OUTPUT_DIR
mkdir $RESULT_DIR


pdflatex -output-directory="$OUTPUT_DIR" -synctex=1 -interaction=nonstopmode ${FILE}.tex

cp literature.bib $OUTPUT_DIR

cd $OUTPUT_DIR
biber ${FILE}
makeindex ${FILE}.idx
makeglossaries ${FILE}

cd ..

pdflatex -output-directory="$OUTPUT_DIR" -synctex=1 -interaction=nonstopmode ${FILE}.tex
pdflatex -output-directory="$OUTPUT_DIR" -synctex=2 -interaction=nonstopmode ${FILE}.tex

cat $OUTPUT_DIR/${FILE}.pdf > $RESULT_DIR/${FILE}.pdf


