-- Stop sourcing filetype.vim
vim.g.did_load_filetypes = 1

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`





-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
-- NOTE: the 4th argument in the map function can be a table i.e options but its most likely un-needed so dont worry about it


-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

   -- map("n", "<leader>cc", "gg0vG$d", opt) -- example to delete the buffer

   -- 通过 12<Enter> 跳转到第 12 行 （12G 我觉得不称手）
   -- 按 <Enter> 跳到行文件末尾。
   -- 按 <Backspace> 回到文件开始。
   -- conflict with copen select !!!!1
   -- map("n", "<CR>", "G", opt)
   map("n", "<BS>", "gg", opt)

   -- <Space>  --  <leader><leader> toggles between buffers
   -- map("n", "<Leader><Leader>", "<c-^>", opt)

   --=============================================================================
   -- EDITOR SETTINGS
   --=============================================================================

   --
   --buffers
   -----------------------------------------------------------------------------------

   -- map("", "<leader>l", ":bnext<cr>", opt)
   -- map("", "<leader>h", ":bprevious<cr>", opt)
   -- buffers page  
   map("n", "<leader>;", ":Telescope buffers<CR>" , opt)
   -- registers 
   -- map("n", "<leader>;", ":Telescope registers<CR>" , opt)

   -- bookmarks dashborad'boomarks  not work 
   map("n", "<leader><leader>b", ":Telescope marks<CR>" , opt)


   --
   --history
   -----------------------------------------------------------------------------------
   --https://stackoverflow.com/questions/3171284/recent-file-history-in-vim
   -- least terminal vim stores the previous ten files into ~/.viminfo in the filemarks section.
   -- You can use '0, '1, '2, ... '9 to jump among them.
   -- oldfiles  space + f + o
   -- map("", "<C-y>", ":browse oldfiles", opt)
   -- enter q to choose file
   -- map("", "<C-y>", ":browse old", opt)
   -- map("", "<C-y>", ":History<CR>", opt)

   --
   --tabs
   -----------------------------------------------------------------------------------
   -- " Switch CWD to the directory of the open buffer  not work
   -- map <leader><leader>cd :cd %:p:h<cr>:pwd<cr>
   map("n", "<leader><leader>cd", ":cd %:p:h<cr>:pwd", opt)

   --    " numbers  go to n tab  **ilike
   -- nnoremap <Leader>n :tabnew<CR>
   -- nnoremap <Leader>x :tabclose<CR>

   -- map("n", "<leader><leader>1", "1gt<CR>", opt)
   -- map("n", "<leader><leader>2", "2gt<CR>", opt)
   -- map("n", "<leader>3", "3gt<CR>", opt)
   -- map("n", "<leader>4", "4gt<CR>", opt)

   --" Tmux
   -----------------------------------------------------------------------------------

   -- fm 看的 neww 新建session 后面跟的是shell脚本, 因为放在bin 全局目录里,所以能找到
 map("", "<Leader><Leader>t", "<cmd>!tmux  neww tmux-sessionizer<CR>", { noremap = true, silent = true })
 -- map("", "<Leader><leader><CR>", ":so ~/.config/nvim/init.vim<cr>", opt)


   --
   -- Editor
   -----------------------------------------------------------------------------------
   map("", "H", "^", opt)
   map("", "L", "$", opt)

   -- 老感觉误操作
   map("", "<Leader><leader>o", "<Nop>", opt)
   map("", "<Leader>o", "<Nop>", opt)
   -- map("", "<leader><leader>f", "<Plug>(easymotion-bd-f)")

   -- draging lines up and down
   -- map("n", "<leader>k",  ":m .-2<CR>==", opt )
   -- map("n", "<leader>j",  ":m .+1<CR>==", opt)
   map("v", "J", ":m '>+1<CR>gv=gv", opt)
   map("v", "K", ":m '<-2<CR>gv=gv", opt)

   -- " Movement
   -- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
   -- " move vertically by visual line
   -- nnoremap j gj
   -- nnoremap k gk
   map("v", "j", "gj", opt)
   map("v", "k", "gk", opt)

   -- others
   -----------------------------------------------------------------------------------
   -- map("i", "jj", "<ESC>", opt)   better-escape 已经加了
   -- map("n", "Q", "<Nop>", opt)
  map("n", "<leader>q", ":q <CR>")
   -- chmod 
   map("n", "<Leader><leader>x", ":!chmod +x %<cr>", opt)

   map("n", "<Leader>w", ":w<CR>", opt)
   -- map("n", "<C-g>", ":Goyo<cr>", opt)
   -- map("n", "<C-g>", "<cmd>TZFocus<CR>", opt)
   map("n", "<C-g>", "[[<Cmd>TZAtaraxis<CR>]]", opt)
   -- map("n", "gc", ":CommentToggle <CR>")

   map("n", "<Leader>os", ":setlocal spell! spelllang=en_us", opt)

   -- map("n","<Leader>`v",":vsp ~/.vimrc<CR>",opt)

   -- nnoremap <Leader>`v :vsp ~/.vimrc<CR>



-- Install plugins
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
   -- use {
   --    "max397574/better-escape.nvim",
   --    event = "InsertEnter",
   -- }


   -- Pairs of mappings [<Space> and ]<Space> add
   -- newlines [f files    https://github.com/tpope/vim-unimpaired

   use {
      "tpope/vim-unimpaired",
   }

   -- Movement
   -- " https://github.com/justinmk/vim-sneak

   use {
      "justinmk/vim-sneak",
      config = function() end,
   }

   use {
      -- "scrooloose/nerdtree",
      "preservim/nerdtree",
      config = function() 

      


      end,
   }

   use {
      "easymotion/vim-easymotion",
      -- requires = { { "justinmk/vim-sneak", opt = true } },
      config = function()
         require "custom.plugins.easymotion"
      end,
   }

   --  Multiple cursors like sublime https://github.com/terryma/vim-multiple-cursors

   use{
     'terryma/vim-multiple-cursors'   ,

         config = function()
               -- local g =  vim.g

               vim.g.multi_cursor_use_default_mapping = 0

               vim.g.multi_cursor_start_word_key      = '<A-n>'
               -- g.multi_cursor_select_all_word_key = '<A-n>'
               -- g.multi_cursor_start_key           = 'g<C-n>'
               -- g.multi_cursor_select_all_key      = 'g<A-n>'
               vim.g.multi_cursor_next_key            = '<A-n>'
               -- g.multi_cursor_prev_key            = '<C-p>'
               -- g.multi_cursor_skip_key            = '<C-x>'
               vim.g.multi_cursor_quit_key            = '<Esc>'

         end,

   }


   -- https://nvchad.github.io/Extras

   use { "nathom/filetype.nvim",
       config= function()
          require("filetype").setup({
        overrides = {
          extensions = {
              -- Set the filetype of *.pn files to potion
              pn = "potion",
          },
        }

           })

       end


 }

   -- https://github.com/haya14busa/incsearch-easymotion.vim  不知道怎么写配置....
   -- use{ 'haya14busa/incsearch-easymotion.vim'}

   -- Surround with parentheses & co
   use {
      "tpope/vim-surround",
   }

   --  Distraction free mode

--      use {
--       "Pocco81/TrueZen.nvim",
--       cmd = {
--          "TZAtaraxis",
--          "TZMinimalist",
--          "TZFocus",
--       },
--       -- config = function()
--           -- check https://github.com/Pocco81/TrueZen.nvim#setup-configuration (init.lua version)
-- 
--       -- end
--    }

   -- tmux
   use {
      "christoomey/vim-tmux-navigator",
   }

   -- FZF plugin, makes Ctrl-P unnecessary  https://github.com/junegunn/fzf
   -- 现在没配这个不行 2021年11月10日上午9:22:17  { 'dir': '~/.fzf', 'do': './install --all' }
   --
   --   use{
   --      'junegunn/fzf',
   --      run = 'cd ~/.fzf && ./install --all',
   --      requires={
   --          "junegunn/fzf.vim"
   --      }
   --
   --   }
   --
   --
   -- " A light-weight LSP plugin based on Neovim's LSP with a highly performant UI (code actions, hover docs, signature help, rename, preview definition, floating terminal, etc...)  https://github.com/glepnir/lspsaga.nvim

   -- use {
   --    "glepnir/lspsaga.nvim",
   --    config = function ()
   --        require 'lspsaga'.init_lsp_saga()
   --    end
   -- }

   -- "showing diagnostics, reference, telescope results, quickfix, and location lists to help you solve all the trouble your code is causing  https://github.com/folke/trouble.nvim
   --    use {
   --
   --       "folke/trouble.nvim",
   --
   --       config = function ()
   --          require 'trouble'.setup {}
   --       end
   --   }
   -- https://nvchad.github.io/config/Lsp%20stuff
   -- load it after nvim-lspconfig , since we'll use some lspconfig stuff in the null-ls config!
   use {
      "williamboman/nvim-lsp-installer",
      --       config = function()
      --          local lsp_installer = require "nvim-lsp-installer"
      --
      --          lsp_installer.on_server_ready(function(server)
      --             local opts = {}
      --
      --             server:setup(opts)
      --             vim.cmd [[ do User LspAttachBuffers ]]
      --          end)
      --       end,
   }

   -- use {
   --    "jose-elias-alvarez/null-ls.nvim",
   --    after = "nvim-lspconfig",
   --    config = function()
   --       require("custom.plugins.nullls").setup()
   --    end,
   -- }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"

-- use vim config  ln -s  ~/Documents/GitHub/NvChad/.vimrc_local_nvi ~/.vimrc_local_nvim  2021年11月21日
-- vim.cmd "source ~/.vimrc_local_nvim"
