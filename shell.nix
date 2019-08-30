{ pkgs ? import ./nix/nixpkgs.nix {}
}:

let
  rustChannel = pkgs.latest.rustChannels.stable;
  devRust = [ rustChannel.rust ];
  prodRust = [ pkgs.rustc pkgs.cargo ];
  updateCrateDeps = pkgs.writeScriptBin "update-crate-deps" ''
    #!/bin/sh
    ${pkgs.carnix}/bin/carnix generate-nix --src .
  '';
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.vim
      pkgs.pkg-config
      pkgs.openssl
      prodRust
      pkgs.rustfmt
      pkgs.direnv
      pkgs.carnix
      updateCrateDeps
    ];
  }
