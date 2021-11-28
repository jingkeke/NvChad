local M = {}
local util = require "lspconfig/util"

M.setup_lsp = function(attach, capabilities)




   local lsp_installer = require "nvim-lsp-installer"

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
         settings = {},
      }

--       if server.name == "rust_analyzer" then
--          opts.settings = {
--             ["rust-analyzer"] = {
--                experimental = {
--                   procAttrMacros = true,
--                },
--             },
--          }
-- 
--          opts.on_attach = function(client, bufnr)
--             local function buf_set_keymap(...)
--                vim.api.nvim_buf_set_keymap(bufnr, ...)
--             end
-- 
--             -- Run nvchad's attach
--             attach(client, bufnr)
-- 
--             -- Use nvim-code-action-menu for code actions for rust
--             buf_set_keymap(bufnr, "n", "<leader>ca", "lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })
--             buf_set_keymap(bufnr, "v", "<leader>ca", "lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })
--          end
--       end


      if server.name == "tsserver" then


        root_dir = util.root_pattern(".git", "tsconfig.json", "jsconfig.json")


         opts.on_attach = function(client, bufnr)

           client.resolved_capabilities.document_formatting = false


            local function buf_set_keymap(...)
               vim.api.nvim_buf_set_keymap( ...)
            end

            -- Run nvchad's attach
            attach(client, bufnr)

            -- Use nvim-code-action-menu for code actions for rust
            buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })
            buf_set_keymap(bufnr, "v", "<leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", { noremap = true, silent = true })
            buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
         end
      end



      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)






-- before version 2021年11月28日下午6:13:13
   -- local lspconfig = require "lspconfig"

   -- lspservers with default config  "pyright"
   -- npm install -g @tailwindcss/language-server   vscode-langservers-extracted
--    local servers = { "html", "cssls", "tailwindcss" }
-- 
--    for _, lsp in ipairs(servers) do
--       lspconfig[lsp].setup {
--          on_attach = attach,
--          capabilities = capabilities,
--          flags = {
--             debounce_text_changes = 150,
--          },
--       }
--    end

   --    lspconfig.tailwindcss.setup{
   --
   --    }
   -- typescript
   -- npm i -g typescript typescript-language-server

--    lspconfig.tsserver.setup {
--       on_attach = function(client, bufnr)
--          client.resolved_capabilities.document_formatting = false
--          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
--       end,
-- 
--       root_dir = util.root_pattern(".git", "tsconfig.json", "jsconfig.json"),
--       -- handlers = {
--       --    ["textDocument/publishDiagnostics"] = function(_, _, params, client_id, _, config)
--       --       local ignore_codes = { 80001, 7016 }
--       --       if params.diagnostics ~= nil then
--       --          local idx = 1
--       --          while idx <= #params.diagnostics do
--       --             if vim.tbl_contains(ignore_codes, params.diagnostics[idx].code) then
--       --                table.remove(params.diagnostics, idx)
--       --             else
--       --                idx = idx + 1
--       --             end
--       --          end
--       --       end
--       --       vim.lsp.diagnostic.on_publish_diagnostics(_, _, params, client_id, _, config)
--       --    end,
--       -- },
--    }

   -- the above tsserver config will remvoe the tsserver's inbuilt formatting
   -- since I use null-ls with denofmt for formatting ts/js stuff.
end

vim.cmd "source ~/.config/nvim/lua/custom/plugins/lspconfig.vim"

return M
