{
  vim.languages = {
    enableLSP = true;
    enableDAP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    astro.enable = true;
    bash = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    css.enable = true;
    html.enable = true;
    go = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
      dap.enable = true;
    };
    lua = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    tailwind.enable = true;
    ts.enable = true;
    nix = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    python = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
      format = {
        enable = true;
        type = "ruff";
      };
      dap.enable = true;
    };
    sql = {
      enable = true;
      lsp.enable = true;
      format.enable = true;
      extraDiagnostics = {
        enable = true;
      };
    };
    markdown = {
      enable = true;
      treesitter.enable = true;
      lsp.enable = true;
      format.enable = true;
      extensions.render-markdown-nvim.enable = true;
    };
    rust = {
      enable = true;
      treesitter.enable = true;
      lsp.enable = true;
      format.enable = true;
      crates.enable = true;
      dap.enable = true;
    };
  };
}
