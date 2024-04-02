{
  description = "My Nix flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    templates = {
      nodejs = {
        path = ./nodejs;
        description = "Init Nodejs project";
      };
    };

  };
}
