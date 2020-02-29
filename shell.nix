with import <nixpkgs>{};
pkgsCross.msp430.mkShell{
    nativeBuildInputs = [ meson ];
    buildInputs = [];
}

#let pkgs = import <nixpkgs> {
#    crossSystem = {
#        config = "msp430";
#    };
#};
#in
#    pkgs.callPackage ( 
#        {mkShell, meson, msp430GccSupport, mspdebug}:
#        mkShell {
#            nativeBuildInputs = [ meson ];
#            buildInputs = [ msp430GccSupport ];
#        }
#    ) {}
