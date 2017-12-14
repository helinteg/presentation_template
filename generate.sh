#!/bin/bash

filename=$1
pdflatex $filename.tex && pdflatex $filename.tex &&
mv $filename.pdf plain_$filename.pdf &&
pdflatex '\providecommand{\enabletodos}{true}\input{'$filename'.tex}' &&
mv $filename.pdf todos_$filename.pdf
mv plain_$filename.pdf $filename.pdf
