export GOPATH:=$(shell pwd)

test:
	go build -x examples/platform.go

lib/darwin/amd64/libSDL.a:
	mkdir -p lib/darwin/amd64
	curl -O https://github.com/kyleconroy/static-sdl/releases/download/v2.0.2/libSDL2_darwin_amd64.tar.gz
	tar -vxf libsdl2_darwin_amd64.tar.gz
	mv libsdl2.a lib/darwin/amd64/libsdl2.a
