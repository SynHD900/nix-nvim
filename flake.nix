{
  description = "SynHD900 Neovim install";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    nvf,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    customNeovim = nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [./nvf-configuration.nix];
    };
  in {
    packages.${system}.default = customNeovim.neovim;
  };
}
