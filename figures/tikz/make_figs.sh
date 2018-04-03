#!/bin/bash

TEMP=temp/temp.tex
OTEMP=temp/temp.pdf

rm -rf temp
mkdir temp

find . -name "*.tex" | while read f; do
  #Suppress old images 
  rm -rf "$f.png"

  rm -rf $TEMP
  echo "Converting $f"
  echo -e "\\documentclass[11pt,a4paper]{standalone}\n
  \\usepackage[utf8]{inputenc}
  \\usepackage[english]{babel}
  \\usepackage{amsmath}
  \\usepackage{amsfonts}
  \\usepackage{amssymb}
  \\usepackage{graphicx}
  \\usepackage{url}
  \\usepackage{python}
  \\usepackage{algpseudocode,algorithm}
  \\usepackage{makeidx}
  \\usepackage{enumitem}
  \\usepackage{xcolor}
  \\usepackage{caption}
  \\usepackage{subcaption}
  \\usepackage{tikz}
  \\usetikzlibrary{matrix}
  \\usetikzlibrary{positioning}
  \\usetikzlibrary{decorations.pathreplacing}
  \\usetikzlibrary{patterns}" > $TEMP
  echo "\\begin{document}" >> $TEMP
  cat $f >> $TEMP
  echo "\\end{document}" >> $TEMP
  pdflatex --output-directory=./temp --aux-directory=./temp $TEMP
  convert -density 300 $OTEMP -quality 90 "$f.png"
  rm -rf $TEMP
done

rm -rf temp
