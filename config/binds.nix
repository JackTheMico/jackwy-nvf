{util, ...}: {
  vim = {
    binds.whichKey = {
      enable = true;
    };
    keymaps = [
      # Top Pickers & Explorer
      (util.mkKeymap "n" "<leader>e" ":lua Snacks.explorer()<cr>" "File Explorer")
      (util.mkKeymap "n" "<leader><space>" ":lua Snacks.picker.smart()<cr>" "Smart Find Files")
      (util.mkKeymap "n" "<leader>," ":lua Snacks.picker.buffers()<cr>" "Buffers")
      (util.mkKeymap "n" "<leader>/" ":lua Snacks.picker.grep()<cr>" "Grep")
      (util.mkKeymap "n" "<leader>:" ":lua Snacks.picker.command_history()<cr>" "Command History")
      # Find
      (util.mkKeymap "n" "<leader>ff" ":lua Snacks.picker.files()<cr>" "Find Files")
      (util.mkKeymap "n" "<leader>fg" ":lua Snacks.picker.git_files()<cr>" "Find Git Files")
      (util.mkKeymap "n" "<leader>fp" ":lua Snacks.picker.projects()<cr>" "Projects")
      (util.mkKeymap "n" "<leader>fr" ":lua Snacks.picker.recent()<cr>" "Recent Files")
      # Other
      (util.mkKeymap "n" "<leader>gg" ":lua Snacks.lazygit()<cr>" "Lazygit")
      (util.mkKeymap "n" "<c-/>" ":lua Snacks.terminal()<cr>" "Toggle Terminal")
    ];
  };
}
