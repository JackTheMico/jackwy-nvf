{
  pkgs,
  util,
  ...
}: {
  vim = {
    autopairs.nvim-autopairs.enable = true;
    debugger.nvim-dap = {
      enable = true;
      ui.enable = true;
    };
    session.nvim-session-manager = {
      enable = true;
      setupOpts = {
        autoload_mode = "CurrentDir";
      };
    };
    comments.comment-nvim = {
      enable = true;
      setupOpts = {
        mappings = {
          basic = true;
          extra = true;
        };
      };
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

      "overseer.nvim" = {
        package = overseer-nvim;
        setupModule = "overseer";
        setupOpts = {
          option_name = true;
        };
        lazy = true;
        keys = [
          (util.mkKeymap "n" "<leader>ow" "<cmd>OverseerToggle<cr>" "Task list")
          (util.mkKeymap "n" "<leader>oo" "<cmd>OverseerRun<cr>" "Run task")
          (util.mkKeymap "n" "<leader>oq" "<cmd>OverseerQuickAction<cr>" "Action recent task")
          (util.mkKeymap "n" "<leader>oi" "<cmd>OverseerInfo<cr>" "Overseer Info")
          (util.mkKeymap "n" "<leader>ob" "<cmd>OverseerBuild<cr>" "Task builder")
          (util.mkKeymap "n" "<leader>ot" "<cmd>OverseerTaskAction<cr>" "Task action")
          (util.mkKeymap "n" "<leader>oc" "<cmd>OverseerClearCache<cr>" "Clear cache")
        ];
      };
    };
  };
}
