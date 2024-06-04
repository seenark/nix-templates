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
      nodejs_18 = {
        path = ./nodejs_18;
        description = "Init Nodejs v.18 project";
      };
      gleam = {
        path = ./gleam;
        description = "Init Gleam project";
      };
    };

  };
}
