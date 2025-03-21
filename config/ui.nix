{colorScheme, ...}: {
  vim = {
    statusline.lualine = {
      enable = true;
      theme = colorScheme;
    };
    # Whether to enable automatically highlight other uses of the word under the cursor [vim-illuminate] .
    tabline.nvimBufferline.enable = true;
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
      illuminate.enable = true;
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
