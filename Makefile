all: Demo

Demo: nanopage/src
	make -C Demo

nanopage/src:
	cd nanopage; git submodule update --init --recursive

clean:
	make -C Demo clean

.PHONY: Demo clean
