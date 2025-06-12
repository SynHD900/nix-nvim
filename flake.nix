{
  description = "SynHD900 Neovim install";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  }: let
    systems = ["x86_64-linux" "aarch64-darwin"];
    forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f system);
  in {
    packages = forEachSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        customNeovim = nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./nvf-configuration.nix];
        };
      in {
        default = customNeovim.neovim;
      }
    );
  };
}
