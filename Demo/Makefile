EXE=demo-app

bin/$(EXE): Demo

run: bin/$(EXE)
	$<

admin: bin/$(EXE)
	$< -m ADMIN -C content

Demo:
	mkdir -p bin;\
	cd ..;\
	APPDIR=$$PWD/$@ stack --local-bin-path $@/bin/ install;\
	strip Demo/bin/*

ghcid:
	stack exec ghcid -- -c'stack ghci --main-is=demo-app'

compress: bin/$(EXE)
	upx -9 $<

clean:
	rm -f bin/*
	cd ..; stack clean

.PHONY: Demo clean run admin
