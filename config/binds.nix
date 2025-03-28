{util, ...}: {
  vim = {
    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
    keymaps = [
      # Top Pickers & Explorer
      # Toggle into currently opened file
      (util.mkLuaKeymap "n" "<leader>e"
        /*
        lua
        */
        ''
          function() 
            MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
            MiniFiles.reveal_cwd() 
          end'' "Mini Files")
      (util.mkKeymap "n" "<leader><space>" ":lua Snacks.picker.smart()<cr>" "Smart Find Files")
      (util.mkKeymap "n" "<leader>," ":lua Snacks.picker.buffers()<cr>" "Buffers")
      (util.mkKeymap "n" "<leader>/" ":lua Snacks.picker.grep()<cr>" "Grep")
      (util.mkKeymap ["n" "x"] "<leader>sw" ":lua Snacks.picker.grep_word()<cr>" "Grep Word")
      (util.mkKeymap "n" "<leader>sk" ":lua Snacks.picker.keymaps({ layout = 'ivy'})<cr>" "Search Keymaps")
      (util.mkKeymap "n" "<leader>:" ":lua Snacks.picker.command_history()<cr>" "Command History")
      (util.mkKeymap "n" "<leader>th" ":lua Snacks.picker.colorschemes({ layout = 'ivy'})<cr>" "Pick Color Schemes")
      # Window
      (util.mkKeymap "n" "<leader>wv" "<cmd>vsplit<cr>" "Split Vertical")
      (util.mkKeymap "n" "<leader>ws" "<cmd>split<cr>" "Split Horizontal")
      (util.mkKeymap "n" "<leader>wq" "<cmd>q<cr>" "Quit Current Window")
      # Find
      (util.mkKeymap "n" "<leader>ff" ":lua Snacks.picker.files()<cr>" "Find Files")
      (util.mkKeymap "n" "<leader>fg" ":lua Snacks.picker.git_files()<cr>" "Find Git Files")
      (util.mkKeymap "n" "<leader>fp" ":lua Snacks.picker.projects()<cr>" "Projects")
      (util.mkKeymap "n" "<leader>fr" ":lua Snacks.picker.recent()<cr>" "Recent Files")
      (util.mkKeymap "n" "<leader>fe" ":lua Snacks.explorer()<cr>" "File Explorer")
      # New File
      (util.mkKeymap "n" "<leader>fn" "<cmd>enew<cr>" "New File")
      # Buffers
      # (util.mkKeymap "n" "<S-h>" "<cmd>bprevious<cr>" "Prev Buffer"Search Kemaps)
      # (util.mkKeymap "n" "<S-l>" "<cmd>bnext<cr>" "Next Buffer")
      # (util.mkLuaKeymap "n" "<leader>bd" ''function() Snacks.bufdelete() end'' "Delete Buffer")
      (util.mkLuaKeymap "n" "<leader>bo" ''function() Snacks.bufdelete.other() end'' "Delete Other Buffer")
      (util.mkKeymap "n" "<leader>bD" ":bd<cr>" "Delete Buffer and Window")
      # lazygit
      (util.mkKeymap "n" "<leader>gg" ":lua Snacks.lazygit()<cr>" "Lazygit")
      (util.mkKeymap "n" "<leader>gf" ":lua Snacks.picker.git_log_file()<cr>" "Git Current File History")
      (util.mkKeymap "n" "<leader>gl" ":lua Snacks.picker.git_log()<cr>" "Git Log (cwd)")
      (util.mkKeymap "n" "<leader>gb" ":lua Snacks.picker.git_log_line()<cr>" "Git Blame Line")
      (util.mkKeymap "n" "<leader>gB" ":lua Snacks.gitbrowse()<cr>" "Git Browse (open)")
      # Scratch
      (util.mkLuaKeymap "n" "<leader>." "function() Snacks.scratch() end" "Toggle Scratch Buffer")
      (util.mkLuaKeymap "n" "<leader>S" "function() Snacks.scratch.select() end" "Select Scratch Buffer")
      # Other
      (util.mkLuaKeymap "n" "<leader>uz" "function() Snacks.zen() end" "Zen Mode")
      (util.mkKeymap "n" "<leader>qq" ":qa<cr>" "Quit All")
      # terminal
      (util.mkKeymap "n" "<c-/>" ":lua Snacks.terminal()<cr>" "Terminal (cwd)")
      # https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
      (util.mkKMexpr "n" "n" "'Nn'[v:searchforward].'zv'" "Next Search Result" true)
      (util.mkKMexpr "x" "n" "'Nn'[v:searchforward]" "Next Search Result" true)
      (util.mkKMexpr "o" "n" "'Nn'[v:searchforward]" "Next Search Result" true)
      (util.mkKMexpr "n" "N" "'nN'[v:searchforward].'zv'" "Prev Search Result" true)
      (util.mkKMexpr "x" "N" "'nN'[v:searchforward]" "Prev Search Result" true)
      (util.mkKMexpr "o" "N" "'nN'[v:searchforward]" "Prev Search Result" true)
      # Move to window using the <ctrl> hjkl keys
      (util.mkKeymap "n" "<C-h>" "<C-w>h" "Go to Left Window")
      (util.mkKeymap "n" "<C-j>" "<C-w>j" "Go to Lower Window")
      (util.mkKeymap "n" "<C-k>" "<C-w>k" "Go to Upper Window")
      (util.mkKeymap "n" "<C-l>" "<C-w>l" "Go to Right Window")
      # Resize window using <ctrl> arrow keys
      (util.mkKeymap "n" "<C-Up>" "<cmd>resize +2<cr>" "Increase Window Height")
      (util.mkKeymap "n" "<C-Down>" "<cmd>resize -2<cr>" "Decrease Window Height")
      (util.mkKeymap "n" "<C-Left>" "<cmd>vertical resize +2<cr>" "Increase Window Width")
      (util.mkKeymap "n" "<C-Right>" "<cmd>vertical resize -2<cr>" "Decrease Window width")
      # Flash.vim
      # NOTE: This is a very powerful easy-motion tool🚀
      (util.mkLuaKeymap ["n" "x" "o"] "<CR>" ''function() require("flash").jump() end'' "Flash")
      (util.mkLuaKeymap ["n" "o" "x"] "S" ''function() require("flash").treesitter() end'' "Flash treesitter")
      (util.mkLuaKeymap "o" "r" ''function() require("flash").remote() end'' "Remote Flash")
      (util.mkLuaKeymap ["o" "x"] "R" ''function() require("flash").treesitter_search() end'' "Treesitter Search")
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
