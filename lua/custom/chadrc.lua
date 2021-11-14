-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

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


M.options = {
   relativenumber = true,
   number = true, 
   cursorline = true,
   wildmenu = true ,
   showmatch = true,
   updatetime = 100,
   ttyfast = true ,
   so = 5,
   showmode = true,
   scrolloff = 12 ,
   foldenable = true,
   foldlevelstart = 10,
   foldnestmax= 10,
   foldmethod = indent,
   


}

-- M.ui = {
--   theme = "nord"
-- }

-- NvChad included plugin options & overrides
M.plugins = {
   options = {
      lspconfig = {
         -- path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   -- To change the Packer `config` of a plugin that comes with NvChad,
   -- add a table entry below matching the plugin github name
   --              '-' -> '_', remove any '.lua', '.nvim' extensions
   -- this string will be called in a `require`
   --              use "(custom.configs).my_func()" to call a function
   --              use "custom.blankline" to call a file
   default_plugin_config_replace = {},
}

M.mappings = {

   insert_nav = {
      backward = "<C-b>",
      end_of_line = "<C-e>",
      forward = "<C-f>",
      next_line = "<C-k>",
      prev_line = "<C-j>",
      beginning_of_line = "<C-a>",
   },
}
-- all plugins related mappings
M.mappings.plugins = {
   -- list open buffers up the top, easy switching too
   bufferline = {
      next_buffer = "<TAB>", -- next buffer
      prev_buffer = "<S-Tab>", -- previous buffer
   },
   -- easily (un)comment code, language aware
   comment = {
      -- toggle = "<leader>/", -- toggle comment (works on multiple lines)
      toggle = "gc", -- toggle comment (works on multiple lines)
   },
   -- NeoVim 'home screen' on open
   dashboard = {
      bookmarks = "<leader>bm",
      new_file = "<leader>fn", -- basically create a new buffer
      open = "<leader>db", -- open dashboard
      session_load = "<leader>l", -- load a saved session
      session_save = "<leader>s", -- save a session
   },
   -- map to <ESC> with no lag
   better_escape = { -- <ESC> will still work
      esc_insertmode = { "jk" }, -- multiple mappings allowed
   },
   -- file explorer/tree
   nvimtree = {
      toggle = "<C-n>",
      -- toggle = "<leader>oe",
      focus = "<leader>e",
   },
   -- multitool for finding & picking things
   telescope = {
      buffers = "<leader>fb",
      find_files = "<C-p>",
      find_hiddenfiles = "<leader>fa",
      git_commits = "<leader>cm",
      git_status = "<leader>gt",
      help_tags = "<leader>fh",
      live_grep = "<leader><leader>g",
      oldfiles = "<leader>fo",
      themes = "<leader>th", -- NvChad theme picker
      -- media previews within telescope finders
      telescope_media = {
         media_files = "<leader>fp",
      },
   },
}

return M
