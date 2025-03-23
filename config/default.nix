{lib, ...}: {
  imports = [
    ./binds.nix
    ./blink.nix
    ./coding.nix
    ./lang-lsp
    ./snippets
    ./options.nix
    ./snacks.nix
    ./ui.nix
    ./mini.nix
  ];

  _module.args.util = import ./util.nix;

  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
