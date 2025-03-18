{lib, ...}: {
  vim = {
    utility = {
      snacks-nvim = {
        enable = true;
        setupOpts = {
          picker = {enabled = true;};
          explorer = {enabled = true;};
          bigfile = {enabled = true;};
          indent = {enabled = true;};
          # dashboard = {enabled = true;};
        };
      };
    };
  };
}
