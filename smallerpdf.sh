#!/bin/bash

for i in *.epub; do ebook-convert "$i" "$i.pdf"; done

for i in *.pdf
do
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="small_$i" "$i"
done

for filename in *.epub.pdf; do mv "$filename" "${filename//".epub"/""}"; done 
for filename in *.pdf; do mv "$filename" "${filename//"small_"/""}"; done 