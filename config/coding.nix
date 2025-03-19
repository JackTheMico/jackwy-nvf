{pkgs, ...}: {
  vim = {
    autopairs.nvim-autopairs.enable = true;
    notes = {
      todo-comments.enable = true;
    };
    git = {
      enable = true;
      git-conflict.enable = true;
      gitsigns = {
        enable = true;
      };
    };
    lazy.plugins = {
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
  };
}
