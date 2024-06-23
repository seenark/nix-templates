{
  description = "Nodejs project";

  # Flake inputs
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  # Flake outputs
  outputs = { self, nixpkgs }:
    let
      # Systems supported
      allSystems = [
        "x86_64-linux" # 64-bit Intel/AMD Linux
        "aarch64-linux" # 64-bit ARM Linux
        "x86_64-darwin" # 64-bit Intel macOS
        "aarch64-darwin" # 64-bit ARM macOS
      ];

      # Helper to provide system-specific attributes
      forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
        pkgs = import nixpkgs { inherit system; };
      });
    in
    {
      # Development environment output
      devShells = forAllSystems ({ pkgs }: {
        default = pkgs.mkShell {
          # The Nix packages provided in the environment
          packages = with pkgs; [
            # nodejs_22
            nodejs-slim_22
            corepack_22
          ];

          shellHook = ''
            echo "🔥🔥🔥 Welcome to a  Nix development environment for Nodejs! v.22 󰎙        󰈸 🌟🌟🌟"
            alias p="pnpm"
            alias n="npm"
            alias y="yarn"
          '';
        };
      });
    };
}


