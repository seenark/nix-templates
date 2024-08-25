# Nix templates

Here are various useful Nix templates for programming that I use. I employ Nix flakes to develop each project independently, eliminating the need for devcontainers.

## how to use

you need to install nix

then select development environment template

### Bun

#### mise env

```sh
nix flake init -t "github:seenark/nix-templates#bun-mise"
```

#### nix env

```sh
nix flake init -t "github:seenark/nix-templates#bun-nix"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#bun"
```

### nodejs

#### latest (v.22)

```sh
nix flake init -t "github:seenark/nix-templates#nodejs"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#nodejs"
```

#### v.18

```sh
nix flake init -t "github:seenark/nix-templates#nodejs_18"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#nodejs_18"
```

### Elixir

```sh
nix flake init -t "github:seenark/nix-templates#elixir"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#elixir"
```

### Gleam

```sh
nix flake init -t "github:seenark/nix-templates#gleam"
```

or use only it's shell

```sh
nix develop "github:seenark/nix-templates#gleam"
```
