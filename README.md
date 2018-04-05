# README #

### What is this repository for? ###

* This repository is the original document of my PhD Thesis. 
* Version 1.0

### How do I get set up? ###

* A Makefile is provided for linux usage otherwise it will be build using TexMaker available at: 
http://www.xm1math.net/texmaker/index_fr.html

On the source Makefile: 
* make: Build the thesis main file in jloiseau_these.pdf
* make make_all: Call all the sub Makefile and build the chapters and parts independently. 
* make clean_all: Call the sub Makefile to clean all the sub directories. 

The sub chapters and parts generated can be found in chapters_alone folder separated per part. 

The tikz pictures can be generated as PNG. 
A script is provided in:
phd_jloiseau/figures/tikz/make_figs.sh

Nothing is provided in the current version to clean the png images generated. 