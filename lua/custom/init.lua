-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

hooks.add("setup_mappings", function(map)
   map("n", "<leader>cc", "gg0vG$d", opt) -- example to delete the buffer
   
-- 通过 12<Enter> 跳转到第 12 行 （12G 我觉得不称手）
-- 按 <Enter> 跳到行文件末尾。
-- 按 <Backspace> 回到文件开始。
   map("n","<CR>" ,"G",opt)
   map("n","<BS>" ,"gg",opt)



end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

hooks.add("install_plugins", function(use)
   use {
      "max397574/better-escape.nvim",
      event = "InsertEnter",
   }

--    use {
-- 	"williamboman/nvim-lsp-installer",
-- 	config = function()
-- 	   local lsp_installer = require "nvim-lsp-installer"
  
-- 	   lsp_installer.on_server_ready(function(server)
-- 	      local opts = {}
  
-- 	      server:setup(opts)
-- 	      vim.cmd [[ do User LspAttachBuffers ]]
-- 	   end)
-- 	end,
--      }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"
