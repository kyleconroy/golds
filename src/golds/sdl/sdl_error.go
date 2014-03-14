package sdl

// #include "SDL_error.h"
import "C"

const (
	ENOMEM				= 0x00000000
	EFREAD				= 0x00000001
	EFWRITE				= 0x00000002
	EFSEEK				= 0x00000003
	UNSUPPORTED			= 0x00000004
	LASTERROR			= 0x00000005
)

func GetError() string {
	return (string) (C.GoString(C.SDL_GetError()))
}

func ClearError() {
	C.SDL_ClearError()
}

func Error(code int) {
	_code := (C.SDL_errorcode) (C.int(code))
	C.SDL_Error(_code)
}

func OutOfMemory() {
	Error(ENOMEM)
}

func Unsupported() {
	Error(UNSUPPORTED)
}
