{util, ...}: {
  vim = {
    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
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
      (util.mkKeymap "n" "<leader>qq" ":qa<cr>" "Quit All")
      (util.mkKeymap "n" "<leader>q" ":lua Snacks.lazygit()<cr>" "Lazygit")
      (util.mkKeymap "n" "<c-/>" ":lua Snacks.terminal()<cr>" "Toggle Terminal")
      # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
      (util.mkKMexpr "n" "n" "'Nn'[v:searchforward].'zv'" "Next Search Result" true)
      (util.mkKMexpr "x" "n" "'Nn'[v:searchforward]" "Next Search Result" true)
      (util.mkKMexpr "o" "n" "'Nn'[v:searchforward]" "Next Search Result" true)
      (util.mkKMexpr "n" "N" "'nN'[v:searchforward].'zv'" "Prev Search Result" true)
      (util.mkKMexpr "x" "N" "'nN'[v:searchforward]" "Prev Search Result" true)
      (util.mkKMexpr "o" "N" "'nN'[v:searchforward]" "Prev Search Result" true)
      # Clear search
      (util.mkLuaKMexpr ["i" "n" "s"] "<esc>" ''        function()
          vim.cmd("noh") return "<esc>" end'' "Escape and Clear hlsearch"
      true)
      # save file
      (util.mkKeymap ["i" "x" "n" "s"] "<C-s>" ":w<cr><esc>" "Save File")
      # NOTE: Temp, will use houdini.nvim in the future.
      (util.mkKeymap' "i" "jk" "<Esc>")
      # better indenting
      (util.mkKeymap' "v" "<" "<gv")
      (util.mkKeymap' "v" ">" ">gv")
    ];
  };
}
