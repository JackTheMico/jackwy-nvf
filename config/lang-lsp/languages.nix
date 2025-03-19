{
  vim.languages = {
    enableLSP = true;
    enableDAP = true;
    enableFormat = true;
    enableTreesitter = true;
    enableExtraDiagnostics = true;

    astro.enable = true;
    bash.enable = true;
    css.enable = true;
    html.enable = true;
    go.enable = true;
    lua.enable = true;
    tailwind.enable = true;
    ts.enable = true;
    nix.enable = true;
    python.enable = true;
    sql.enable = true;
    markdown = {
      enable = true;
      treesitter.enable = true;
      lsp.enable = true;
      format.enable = true;
      extensions.render-markdown-nvim.enable = true;
    };
    rust = {
      enable = true;
      crates.enable = true;
    };
  };
}
