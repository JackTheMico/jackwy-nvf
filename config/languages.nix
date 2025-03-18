{
  vim.languages = {
    astro.lsp.enable = true;
    tailwind.lsp.enable = true;
    ts.lsp.enable = true;
    nix.lsp.enable = true;
    python.lsp = {
      enable = true;
      server = "basedpyright"; # default value
    };
    sql.lsp.enable = true;
  };
}
