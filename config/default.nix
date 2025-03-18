{lib, ...}: {
  imports = [
    ./binds.nix
    ./blink.nix
    ./ui.nix
    ./snacks.nix
  ];

  _module.args.util = import ./util.nix;

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
