{
  vim = {
    utility = {
      snacks-nvim = {
        enable = true;
        setupOpts = {
          picker = {enabled = true;};
          explorer = {enabled = true;};
          bigfile = {enabled = true;};
          debug = {enabled = true;};
          indent = {enabled = true;};
          image = {enabled = true;};
          notifier = {enabled = true;};
          scratch = {enabled = true;};
          statuscolumn = {enabled = false;};
          quickfile = {enabled = true;};
          zen = {enabled = true;};
          # dashboard = {enabled = true;};
        };
      };
      vim-wakatime.enable = true;
      # Use snacks image so this is no needed.
      # images = {
      #   image-nvim = {
      #     enable = true;
      #     setupOpts = {
      #       integrations = {
      #         markdown.enable = true;
      #       };
      #     };
      #   };
      # };
      preview.markdownPreview = {
        enable = true;
      };
    };
  };
}
