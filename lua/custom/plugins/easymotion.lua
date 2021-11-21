-- Turn on case-insensitive feature
-- let g:EasyMotion_smartcase = 1
-- map <Leader> <Plug>(easymotion-prefix)

local g = vim.g

-- 預設的 key mapping 過多
g.EasyMotion_do_mapping = 0

g.EasyMotion_use_upper = 1 -- append a trailing slash to folder names
g.EasyMotion_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
g.EasyMotion_smartcase = 1

g["seak#label"] = 1

-- use vim config  
vim.cmd "source ~/.config/nvim/lua/custom/plugins/easymotion.vim"

vim.api.nvim_set_keymap("n", "<Leader>t", "<Plug>(easymotion-t2)", { noremap = true })

-- " hjkl  s j k t / ? g/   -- EasyMotion
-- " map <Leader>h <Plug>(easymotion-linebackward)
-- map <Leader><Leader>j <Plug>(easymotion-j)
-- map <Leader><Leader>k <Plug>(easymotion-k)
-- " map <Leader>l <Plug>(easymotion-lineforward)
--
-- " <Leader>f{char} to move to {char}
-- map  <Leader><Leader>f <Plug>(easymotion-bd-f)
-- nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
-- " vim-sneak behaviour through easymotio
-- map <Leader><Leader>t <Plug>(easymotion-t2)
-- nmap <Leader><Leader>t <Plug>(easymotion-overwin-t2)
-- map <Leader><Leader>s <Plug>(easymotion-f2)
-- nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)
--
-- map <Leader>/ <Plug>(incsearch-easymotion-/)
-- map <Leader>? <Plug>(incsearch-easymotion-?)
-- map <Leader>g/ <Plug>(incsearch-easymotion-stay)
--

-- end

-- local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
-- M.init = function(theme)
--    if not theme then
--       theme = require("core.utils").load_config().ui.theme
--    end
--
--    -- set the global theme, used at various places like theme switcher, highlights
--    vim.g.nvchad_theme = theme
--
--    local present, base16 = pcall(require, "base16")
--
--    if present then
--       -- first load the base16 theme
--       base16(base16.themes(theme), true)
--
--       -- unload to force reload
--       package.loaded["colors.highlights" or false] = nil
--       -- then load the highlights
--       require "colors.highlights"
--    else
--       return false
--    end

-- end

-- returns a table of colors for givem or current theme
-- M.get = function(theme)
--    if not theme then
--       theme = vim.g.nvchad_theme
--    end
--
--    return require("hl_themes." .. theme)
-- end

-- return M
