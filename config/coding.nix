{pkgs, ...}: {
  vim.autopairs.nvim-autopairs.enable = true;
  vim.lazy.plugins = {
    "guess-indent.nvim" = {
      package = pkgs.vimPlugins.guess-indent-nvim;
      setupModule = "guess-indent";
      setupOpts = {
        option_name = true;
      };
      lazy = true;
      event = ["BufEnter"];
    };
  };
}
