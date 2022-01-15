-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
-- M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the structure of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

-- Folding
-----------------------------------------------------------------------------------
-- set foldlevelstart=10   " open most folds by default
-- set foldnestmax=10      " 10 nested fold max

-- space open/closes folds
-- nnoremap <space> za
-- set foldmethod=indent   " fold based on indent level

-- This is especially useful for me since I spend my days in Python.
-- Other acceptable values are marker, manual, expr, syntax, diff.
-- Run :help foldmethod to find out what each of those do.
--

-- showmatch = true,
-- updatetime = 100,
-- ttyfast = true ,
-- so = 5,
-- showmode = true,
-- scrolloff = 12 ,
-- foldenable = true,
-- foldlevelstart = 10,
-- foldnestmax= 10,
-- foldmethod = indent,
-- cursorline = true,
-- wildmenu = true ,
-- vim.g.python3_host_prog = "~/.neovim/py3/bin/python"
-- vim.g.node_host_prog = "~/.neovim/node/bin/neovim-node-host"

M.options = {
   relativenumber = true,
   number = true,
}

-- M.ui = {
--   theme = "nord"
-- }

-- these are plugin related options
M.plugins = {

   -- enable and disable plugins (false for disable)
   status = {
      blankline = true, -- show code scope with symbols
      bufferline = true, -- list open buffers up the top, easy switching too
      colorizer = false, -- color RGB, HEX, CSS, NAME color codes
      comment = true, -- easily (un)comment code, language aware
      dashboard = false, -- NeoVim 'home screen' on open
      esc_insertmode = true, -- map to <ESC> with no lag
      feline = false, -- statusline
      gitsigns = false, -- gitsigns in statusline
      lspsignature = true, -- lsp enhancements
      telescope_media = false, -- media previews within telescope finders
      vim_matchup = true, -- % operator enhancements
      cmp = true,
      nvimtree = true,
      autopairs = true,
   },

   nvimtree = {
      enable_git = 0,
      -- packerCompile required after changing lazy_load
      lazy_load = true,

      ui = {
         allow_resize = true,
         side = "left",
         width = 25,
         hide_root_folder = true,
      },

      default_plugin_config_replace = {
         -- dashboard = 'custom.plugins.dashboard',
         nvimtree = "custom.plugins.nvimtree",
      },
   },

   options = {
      autopairs = { loadAfter = "nvim-cmp" },
      lspconfig = {
         -- path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
         setup_lspconf = "custom.plugins.lspconfig",
      },
      nvimtree = {
         enable_git = 0,
      },
      luasnip = {
         snippet_path = {},
      },
      statusline = { -- statusline related options
         -- these are filetypes, not pattern matched
         -- shown filetypes will overrule hidden filetypes
         hidden = {
            "help",
            "dashboard",
            "NvimTree",
            "terminal",
         },
         -- show short statusline on small screens
         shortline = true,
         shown = {},
         -- default, round , slant , block , arrow
         style = "default",
      },
      esc_insertmode_timeout = 300,
   },

   default_plugin_config_replace = {
      dashboard = "custom.plugins.dashboard",
      nvimtree = "custom.plugins.nvimtree",
   },
}

M.mappings = {

   -- close_buffer = "<leader>x",
   -- save_file = "<C-s>", -- save file using :w

   -- save_file = "<leader>w", -- not work!!!!!!
   insert_nav = {
      backward = "<C-b>",
      end_of_line = "<C-e>",
      forward = "<C-f>",
      next_line = "<C-k>",
      prev_line = "<C-j>",
      beginning_of_line = "<C-a>",
   },

   -- terminal related mappings
   terminal = {
      -- multiple mappings can be given for esc_termmode and esc_hide_termmode
      -- get out of terminal mode
      -- esc_termmode = { "jk" }, -- multiple mappings allowed
      -- get out of terminal mode and hide it
      -- esc_hide_termmode = { "JK" }, -- multiple mappings allowed
      -- show & recover hidden terminal buffers in a telescope picker
      pick_term = "<leader><leader>w",
      -- below three are for spawning terminals
      new_horizontal = "<leader>h",
      new_vertical = "<leader>v",
      new_window = "<leader>t",
   },
}
-- all plugins related mappings
M.mappings.plugins = {
   -- list open buffers up the top, easy switching too
   -- bufferline = {
   --    next_buffer = "<Tab>", -- next buffer
   --    prev_buffer = "<S-Tab>", -- previous buffer
   -- },
   -- easily (un)comment code, language aware
   comment = {
      -- toggle = "<leader>/", -- toggle comment (works on multiple lines)
      toggle = "gc", -- toggle comment (works on multiple lines)
   },
   -- NeoVim 'home screen' on open
   -- dashboard = {
   --    bookmarks = "<leader>bm",
   --    new_file = "<leader>fn", -- basically create a new buffer
   --    open = "<leader>db", -- open dashboard
   --    session_load = "<leader>l", -- load a saved session
   --    session_save = "<leader>s", -- save a session
   -- },

   -- map to <ESC> with no lag
   -- better_escape = { -- <ESC> will still work
   --    esc_insertmode = { "jk" }, -- multiple mappings allowed
   -- },

   -- multitool for finding & picking things
   telescope = {
      buffers = "<leader>fb",
      find_files = "<C-p>",
      -- find_hiddenfiles = "<leader>fa",
      -- git_commits = "<leader>cm",
      -- git_status = "<leader>gt",
      -- help_tags = "<leader>fh",
      live_grep = "<leader><leader>g",
      -- oldfiles = "<leader>fo",
      oldfiles = "<C-y>",
      -- themes = "<leader>th", -- NvChad theme picker
      -- media previews within telescope finders
      -- telescope_media = {
      --    media_files = "<leader>fp",
      -- },
   },
   lspconfig = {
      -- declaration = "gD",
      -- definition = "gd",
      -- hover = "K",
      -- implementation = "gi",
      -- signature_help = "gk",
      -- add_workspace_folder = "<leader>wa",
      -- remove_workspace_folder = "<leader>wr",
      -- list_workspace_folders = "<leader>wl",
      -- type_definition = "<leader>D",
      -- rename = "<leader>rn",
      -- code_action = "<leader>ca",
      -- references = "gr",
      -- float_diagnostics = "ge",
      -- goto_prev = "[d",
      -- goto_next = "]d",
      set_loclist = "<leader><leader>q",
      -- formatting = "<leader>fm",
   },
}

return M
