{lib, colorScheme, ...}: {
  vim = {
    statusline.lualine = {
      enable = true;
      theme = colorScheme;
    };
    tabline.nvimBufferline.enable = true;
    theme = {
      enable = true;
      name = colorScheme;
      style = "dark";
    };
    dashboard.dashboard-nvim.enable = true;
  };
}
