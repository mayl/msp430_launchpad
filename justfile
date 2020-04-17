@help: 
    echo "run 'just cross' to build a crosscompiled build"

cross_configure:
    test -e mspGCCBuild || meson mspGCCBuild --cross-file=msp430_gcc.cross

cross: cross_configure
    ninja -C mspGCCBuild

clean:
    test -e mspGCCBuild && rm -r mspGCCBuild || echo ""
