with 
  import <nixpkgs>{};
mkShell{
  nativeBuildInputs = [ 
    pkgsCross.msp430.buildPackages.gcc
    pkgsCross.msp430.msp430GccSupport
    mspdebug
    gcc
    ninja 
    meson 
    just
  ];

  #buildInputs = [];
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
