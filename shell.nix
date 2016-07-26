with import <nixpkgs> { };

haskell.lib.buildStackProject {
  name = "pipes-protolude";
  ghc = haskell.packages.ghc7103.ghc;
  shellHook = "export SSL_CERT_FILE=${cacert}/etc/ssl/certs/ca-bundle.crt";
  buildInputs =
    [ zlib
      ncurses
      cabal-install
      git ];
}
