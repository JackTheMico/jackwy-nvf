{
  description = "Jack Wenyoung's NVF configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    inherit (nixpkgs) lib;
    systems = lib.systems.flakeExposed;
    pkgsFor = lib.genAttrs systems (system: import nixpkgs {inherit system;});
    forEachSystem = f: lib.genAttrs systems (system: f pkgsFor.${system});
  in {
    packages = forEachSystem (pkgs: rec {
      # Set the default package to the wrapped instance of Neovim.
      # This will allow running your Neovim configuration with
      # `nix run` and in addition, sharing your configuration with
      # other users in case your repository is public.
      default = nvf-config;
      nvf-config = pkgs.callPackage ./pkgs/nvf-config.nix {
        inherit inputs;
        inherit (self) outputs;
      };
      snippets = pkgs.callPackage ./pkgs/snippets.nix {};
      inspect = pkgs.writeShellApplication {
        name = "nvf-inspect-config";
        text = ''nvim "$(${nvf-config}/bin/nvf-print-config-path)"'';
      };
    });
    devShells = forEachSystem (pkgs: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          nixd
          nixfmt-rfc-style
          statix
          lua-language-server
          # stylua # TODO: configure (spaces instead of tabs)
        ];
      };
    });
    nixosConfigurations = {
      nixos-jackwy-desktop = nixpkgs.lib.nixosSystem {
        modules = [
          # This will make wrapped neovim available in your system packages
          # Can also move this to another config file if you pass inputs/self around with specialArgs
          ({pkgs, ...}: {
            environment.systemPackages = [self.packages.${pkgs.stdenv.system}.neovim];
          })
        ];
        # ...
      };
    };
  };
}
