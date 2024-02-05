# shell.nix


devShell.${system} = pkgs.mkShell {
  buildInputs = [
    pkgs.azure-cli
    pkgs.opentofu
  ];
};



