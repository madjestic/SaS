default:
	ghc ./Main.hs -o Main

runall:
#	make default
	python geoParser.py
	make all
	gpu ./Main

run:
	make all
	gpu ./Main

all:
	rm ./Main
	rm ./Main.o
	rm ./Main.hi
	rm ./Geometry.hi
	rm ./Geometry.o
	ghc ./Main.hs -o Main
