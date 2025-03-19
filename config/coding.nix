{pkgs, ...}: {
  vim = {
    autopairs.nvim-autopairs.enable = true;
    debugger.nvim-dap = {
      enable = true;
    };
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
    lazy.plugins = with pkgs.vimPlugins; {
      "guess-indent.nvim" = {
        package = guess-indent-nvim;
        setupModule = "guess-indent";
        setupOpts = {
          option_name = true;
        };
        lazy = true;
        event = ["BufEnter"];
      };
      "flash.nvim" = {
        package = flash-nvim;
        setupModule = "flash";
        setupOpts = {
          option_name = true;
        };
        lazy = true;
        event = ["BufEnter"];
      };
    };
  };
}
