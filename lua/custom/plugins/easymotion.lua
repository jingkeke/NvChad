
-- config = function ()
-- Use uppercase target labels and type as a lower case
-- let g:EasyMotion_use_upper = 1
-- let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

-- Turn on case-insensitive feature
-- let g:EasyMotion_smartcase = 1
-- map <Leader> <Plug>(easymotion-prefix)

local g = vim.g



g.EasyMotion_use_upper = 1 -- append a trailing slash to folder names
g.EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
g.EasyMotion_smartcase = 1 

 g.seak#label = 1

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

