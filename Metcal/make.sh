#!/bin/bash
rm instructions-fi.pdf
pdflatex -interaction=nonstopmode instructions-fi.tex > 1st.log
bibtex instructions-fi > 2nd.log
pdflatex -interaction=nonstopmode instructions-fi.tex > 3rd.log
pdflatex -interaction=nonstopmode instructions-fi.tex > 4th.log
epdfview instructions-fi.pdf
