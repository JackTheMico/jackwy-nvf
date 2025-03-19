{lib, ...}: {
  vim.formatter = {
    conform-nvim = {
      enable = true;
      setupOpts = {
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 500;
          async = true;
        };
        formatters_by_ft = let
          mkFormatter = formatters: (lib.attrsets.listToAttrs (map (f: lib.attrsets.nameValuePair "@${f}" f) formatters)) // {stop_after_first = true;};
        in {
          haskell = mkFormatter [
            "ormolu"
          ];
          html = mkFormatter [
            "prettierd"
            "prettier"
          ];
          css = mkFormatter [
            "prettierd"
            "prettier"
          ];
          javascript = mkFormatter [
            "prettierd"
            "prettier"
          ];
          javascriptreact = mkFormatter [
            "prettierd"
            "prettier"
          ];
          typescript = mkFormatter [
            "prettierd"
            "prettier"
          ];
          python = mkFormatter [
            "ruff"
          ];
          lua = mkFormatter [
            "stylua"
          ];
          nix = mkFormatter [
            "nixfmt"
            "alejandra"
          ];
          markdown = mkFormatter [
            "prettierd"
            "prettier"
          ];
          rust = mkFormatter [
            "rustfmt"
          ];
        };
      };
    };
  };
}
