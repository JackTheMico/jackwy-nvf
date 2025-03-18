{
  pkgs,
  inputs,
  outputs,
}: let
  colorScheme = "dracula";
in
  (inputs.nvf.lib.neovimConfiguration {
    inherit pkgs;
    modules = [(import ../config)];
    extraSpecialArgs = {
      # Inputs is seemingly reserved, though the docs don't show it
      inputs' = inputs;
      inherit colorScheme outputs;
    };
  })
  .neovim
