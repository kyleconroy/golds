To compile SDL as a static library, use the following configure script.

    CFLAGS="-fPIC" ./configure --with-pic

The library is created in `build/.libs/libSDL2.a`

Then, generate a tarball by

    cd build/.libs
    tar -cvzf libSDL2_darwin_amd64.tar.gz libSDL2.a
