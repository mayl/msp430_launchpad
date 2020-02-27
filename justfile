cross_configure:
    test -e mesonBuild || meson mesonBuild --cross-file=msp430_gcc.cross

cross: cross_configure
    ninja -C mesonBuild

clean:
    test -e mesonBuild && rm -r mesonBuild
