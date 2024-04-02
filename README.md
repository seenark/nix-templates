# Nix templates

Here are various useful Nix templates for programming that I use. I employ Nix flakes to develop each project independently, eliminating the need for devcontainers.

## how to use

you need to install nix

then use this template

### nodejs

```sh
nix flake init -t "github:seenark/nix-templates#nodejs"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#nodejs"
```
