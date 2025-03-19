# Jack Wenyoung's NVF configuration

## What's NVF?
- [NVF Manual](https://notashelf.github.io/nvf/index.xhtml)
- [NVF Github Repo](https://github.com/NotAShelf/nvf)

nvf is a highly modular, configurable, extensible and easy to use Neovim configuration in Nix. 
Designed for flexibility and ease of use, nvf allows you to easily configure your fully featured Neovim instance with a few lines of Nix.

## Why NVF?

I get used to LazyVim distribution before, Now I want sth similiar on NixOS.
I have tried NixCats, but I suck at configuring everything in Lua: "which-key won't popup, Lsps not working and etc".
If you maintain your own Lua configurations of neovim, you should try with NixCats on NixOS, it's a great framework.
I just think NVF is more suitable for me, it allows users to configure most in Nix while also allows Lua configuration when needed.

## Alternatives
- [nixCats](https://github.com/BirdeeHub/nixCats-nvim) A Neovim module scheme semi-comparable to Home Manager for Neovim. They try to have a module for as many packages as they can and do a great job, but you can always fall back to writing lua in nix strings if something is missing.
- [NixVim](https://github.com/nix-community/nixvim) A Neovim module scheme semi-comparable to Home Manager for Neovim. They try to have a module for as many packages as they can and do a great job, but you can always fall back to writing lua in nix strings if something is missing.

## Inspiring & Thanks
- [foglar/neovim-config](https://github.com/foglar/neovim-config)
- [foglar/nixos-config](https://github.com/foglar/nixos-config) A great show case about how to setup NixOS and NVF.
- [LilleAila/nvf-config](https://github.com/LilleAila/nvf-config) The best NVF file structure I can find. 
