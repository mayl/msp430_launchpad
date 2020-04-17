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

  shellHook = '' 
    alias j=just
  '';
}
