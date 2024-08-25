{
  description = "My Nix flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    templates = {
      bun-mise = {
        path = ./bun/mise/latest;
        description = "Init Bun project (mise)";
      };
      bun-nix = {
        path = ./bun/nix/latest;
        description = "Init Bun project (nix)";
      };
      nodejs-mise = {
        path = ./nodejs/mise/latest;
        description = "Init Nodejs project using mise";
      };
      nodejs-nix = {
        path = ./nodejs/nix/latest;
        description = "Init Nodejs project using nix";
      };
      nodejs-18-nix = {
        path = ./nodejs/nix/nodejs_18;
        description = "Init Nodejs v.18 project";
      };
      elixir = {
        path = ./elixir;
        description = "Init Elixir project";
      };
      gleam = {
        path = ./gleam;
        description = "Init Gleam project";
      };
    };

  };
}
