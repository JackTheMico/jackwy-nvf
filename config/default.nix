{lib, ...}: {
  imports = [
    ./binds.nix
    ./blink.nix
    ./coding.nix
    ./formatter.nix
    ./languages.nix
    ./options.nix
    ./snacks.nix
    ./treesitter.nix
    ./ui.nix
  ];

  _module.args.util = import ./util.nix;

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
