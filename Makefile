all: Demo

Demo: nanopage
	make -C Demo

nanopage:
	git submodule add git@github.com:mayeranalytics/nanopage.git

clean:
	make -C Demo clean

.PHONY: Demo clean
