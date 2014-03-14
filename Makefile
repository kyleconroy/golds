export GOPATH:=$(shell pwd)

platform: src/golds/sdl/lib
	go build -x examples/platform.go

mixer: src/golds/sdl/lib src/golds/mix/lib
	go build -x examples/mixer.go

# Hacks all the way down
src/golds/sdl/lib:
	cd src/golds/sdl && ln -s ../../../lib lib

src/golds/sdl_mix/lib:
	cd src/golds/mix && ln -s ../../../lib lib


lib/darwin/amd64/libSDL.a:
	mkdir -p lib/darwin/amd64
	curl -O https://github.com/kyleconroy/static-sdl/releases/download/v2.0.2/libSDL2_darwin_amd64.tar.gz
	tar -vxf libsdl2_darwin_amd64.tar.gz
	mv libsdl2.a lib/darwin/amd64/libsdl2.a
