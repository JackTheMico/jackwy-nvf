{
  vim.treesitter = {
    enable = true;
    addDefaultGrammars = true;
    autotagHtml = true;
    context.enable = true;
    # NOTE: List of treesitter grammars to install.
    # For languages already supported by nvf, you may use the vim.language.<lang>.treesitter options, which will automatically add the required grammars to this.
    # grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
}
