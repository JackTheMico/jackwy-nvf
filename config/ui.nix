{
  colorScheme,
  pkgs,
  ...
}: {
  vim = {
    extraPlugins = with pkgs.vimPlugins; {
      catppuccin = {
        package = catppuccin-nvim;
        setup = "require('catppuccin').setup {}";
      };
      tokyonight = {
        package = tokyonight-nvim;
        setup = "require('tokyonight').setup {}";
      };
    };
    statusline.lualine = {
      enable = true;
      theme = colorScheme;
    };
    tabline.nvimBufferline = {
      enable = true;
      mappings = {
        closeCurrent = "<leader>bd";
        cycleNext = "<S-l>";
        cyclePrevious = "<S-h>";
      };
      setupOpts = {
        options = {
          show_close_icon = false;
          separator_style = "padded_slope";
          indicator = {
            icon = "🚀";
            style = "icon";
          };
        };
      };
    };
    theme = {
      enable = true;
      name = colorScheme;
      style = "dark";
    };
    visuals = {
      nvim-web-devicons.enable = true;
      rainbow-delimiters.enable = true;
    };
    ui = {
      # Whether to enable automatically highlight other uses of the word under the cursor [vim-illuminate] .
      illuminate.enable = true;
      smartcolumn.enable = true;
      borders = {
        enable = true;
        globalStyle = "rounded";
        plugins = {
          which-key.enable = true;
          lspsaga.enable = true;
          lsp-signature.enable = true;
          fastaction.enable = true;
        };
      };
    };
    # notify = {
    #   nvim-notify.enable = true;
    # };
    dashboard.alpha = {
      enable = true;
    };
  };
}
