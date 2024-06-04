{
  description = "My Nix flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    templates = {
      bun = {
        path = ./bun;
        description = "Init Bun project";
      };
      nodejs = {
        path = ./nodejs;
        description = "Init Nodejs project";
      };
      gleam = {
        path = ./gleam;
        description = "Init Gleam project";
      };
    };

  };
}
