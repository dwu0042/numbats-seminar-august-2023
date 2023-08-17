all:
	xelatex --no-pdf pres.tex > pres.log.1
	biber pres > pres.log.2
	xelatex --no-pdf pres.tex > pres.log.3
	xelatex --no-pdf pres.tex > pres.log.4
	dvisvgm --zoom=-1 --font-format=woff2 --bbox=papersize --page=1- --linkmark=none pres.xdv