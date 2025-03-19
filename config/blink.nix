{
  vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;
    setupOpts = {
      signature.enabled = true;
    };
    sourcePlugins = {
      emoji = {
        enable = true;
      };
      spell = {
        enable = true;
      };
      ripgrep = {
        enable = true;
      };
    };
  };
}
