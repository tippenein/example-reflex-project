{ reflex-platform ? import ./reflex-platform {}, ... }:
let
  ghcjs-c3-drv = reflex-platform.nixpkgs.fetchgit {
    url    = "https://github.com/tippenein/ghcjs-c3";
    rev = "ddecd55665ab687962df7fd75d11c7a2bd3c791f";
    sha256 = "0b7d3fwq0h9fw0lh1jgccc6jgc726ycn2gncg1f0z7xvjzrz1ilc";
  };
in
  reflex-platform.ghcjs.override {
    overrides = self: super: {
      ghcjs-c3 = self.callPackage ghcjs-c3-drv {};
      # ghcjs-c3 = self.callPackage ./deps/ghcjs-c3/default.nix {};
    };
  }
