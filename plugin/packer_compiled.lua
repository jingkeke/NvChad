-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jingzy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jingzy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jingzy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jingzy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jingzy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "require('plugins.configs.others').comment()" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "require('plugins.configs.others').luasnip()" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["better-escape.nvim"] = {
    config = { "require('plugins.configs.others').better_escape()" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "require('plugins.configs.bufferline')" },
    load_after = {
      ["nvim-web-devicons"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  extensions = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/extensions",
    url = "https://github.com/Nvchad/extensions"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\nr\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\rfiletype\frequire\0" },
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["indent-blankline.nvim"] = {
    config = { "require('plugins.configs.others').blankline()" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "require('plugins.configs.others').signature()" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  nerdtree = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nvim-autopairs"] = {
    config = { "require('plugins.configs.others').autopairs()" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-base16.lua"] = {
    after = { "nvim-web-devicons" },
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tinit\vcolors\frequire\0" },
    load_after = {
      ["packer.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-base16.lua",
    url = "https://github.com/NvChad/nvim-base16.lua"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "require('plugins.configs.cmp')" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    config = { "require('plugins.configs.lspconfig')" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "require('plugins.configs.treesitter')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    after = { "bufferline.nvim" },
    config = { "require('plugins.configs.icons')" },
    load_after = {
      ["nvim-base16.lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    after = { "nvim-base16.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "require('plugins.configs.telescope')" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-easymotion"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30custom.plugins.easymotion\frequire\0" },
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-multiple-cursors"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\b\0\0176\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\4\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<Esc>\26multi_cursor_quit_key\26multi_cursor_next_key\n<A-n> multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0" },
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/jingzy/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15bufferline\18core.mappings\frequire\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
-- Setup for: vim-matchup
time([[Setup for vim-matchup]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16vim-matchup\21packer_lazy_load\15core.utils\frequire\0", "setup", "vim-matchup")
time([[Setup for vim-matchup]], false)
-- Setup for: nvim-lspconfig
time([[Setup for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0006if &ft == \"packer\" | echo \"\" | else | silent! e %\bcmd\bvimx\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\4\0009\0\5\0003\2\6\0)\3\0\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\19nvim-lspconfig\21packer_lazy_load\15core.utils\frequire\0", "setup", "nvim-lspconfig")
time([[Setup for nvim-lspconfig]], false)
-- Setup for: telescope.nvim
time([[Setup for telescope.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14telescope\18core.mappings\frequire\0", "setup", "telescope.nvim")
time([[Setup for telescope.nvim]], false)
-- Setup for: Comment.nvim
time([[Setup for Comment.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\3\0\6\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\fcomment\18core.mappings\17Comment.nvim\21packer_lazy_load\15core.utils\frequire\0", "setup", "Comment.nvim")
time([[Setup for Comment.nvim]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-sneak")
time([[Config for vim-sneak]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\nr\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\15extensions\1\0\0\1\0\1\apn\vpotion\nsetup\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
-- Config for: vim-easymotion
time([[Config for vim-easymotion]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30custom.plugins.easymotion\frequire\0", "config", "vim-easymotion")
time([[Config for vim-easymotion]], false)
-- Config for: vim-multiple-cursors
time([[Config for vim-multiple-cursors]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\b\0\0176\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\4\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<Esc>\26multi_cursor_quit_key\26multi_cursor_next_key\n<A-n> multi_cursor_start_word_key%multi_cursor_use_default_mapping\6g\bvim\0", "config", "vim-multiple-cursors")
time([[Config for vim-multiple-cursors]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets', 'better-escape.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
