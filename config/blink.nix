{lib, ...}: {
  vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;
    setupOpts = {
      cmdline.keymap.preset = "none";
      cmdline.completion.menu.auto_show = true;
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
