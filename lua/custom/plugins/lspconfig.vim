
" lsp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ref https://elijahmanor.com/blog/neovim-tmux
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" nnoremap <silent> gh    <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gH    <cmd>:Telescope lsp_code_actions<CR>
" nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>fo <cmd>lua vim.lsp.buf.formatting_sync(nil, 5000)<CR>
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 5000)
" autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 5000)

let g:completion_trigger_character = ['.']




" lua require 'lspsaga'.init_lsp_saga()



" nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
" vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
" nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
" nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
" nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
" nnoremap <silent> gp <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
" nnoremap <silent><M-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
" nnoremap <leader>comm <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
" nnoremap <silent><M-g> <cmd>lua require('lspsaga.floaterm').open_float_terminal("lazygit")<CR>
" tnoremap <silent><leader><esc> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
" not work......
" tnoremap <silent><M-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
" nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
" nnoremap <silent><leader>cc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
" nnoremap <silent> [d <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
" nnoremap <silent> ]d <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

" nnoremap <leader>fgd :lua require'telescope.builtin'.live_grep{ cwd = 'slices/admin' }
" nnoremap <leader>fgd :lua require'telescope.builtin'.live_grep{ search_dirs = { 'slices/admin' } }

" lua << EOF
" require 'trouble'.setup {}
" EOF

" nnoremap <leader>xx <cmd>TroubleToggle<cr>
" nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
" nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
" nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
" nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
" nnoremap gR <cmd>TroubleToggle lsp_references<cr>
" }}}



" term2 ctr+u 改背景色 但是vim不变透明 如下修改

" hi NonText ctermbg=none
" hi Normal guibg=NONE ctermbg=NONE

" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

let t:is_transparent = 0
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction





" Tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" These lines change the cursor from block cursor mode to vertical bar cursor mode when using tmux.
" Without these lines, tmux always uses block cursor mode.
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif



"Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore files for completion
set wildignore+=*/.git/*,*/.umi/*,*/node_modules/*,*/.mfsu-dev/*,*/.idea/*,*/dist/*,*/tmp/*,*.swp


" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz
" nnoremap <C-i> <C-i>zz


" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" This is especially useful for me since I spend my days in Python.
" Other acceptable values are marker, manual, expr, syntax, diff.
" Run :help foldmethod to find out what each of those do.


" Sensible stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start     " Make backspace behave in a more intuitive way
nmap Q <Nop>
" 'Q' in normal mode enters Ex mode. You almost never want this.
"
"



" tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful mappings for managing tabs

"" Let 'tl' toggle between this and the last accessed tab
"let g:lasttab = 1
"nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader><leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


" " numbers  go to n tab  **ilike
" nnoremap <Leader>1 1gt<CR>
" nnoremap <Leader>2 2gt<CR>
" nnoremap <Leader>3 3gt<CR>
" nnoremap <Leader>4 4gt<CR>
" nnoremap <Leader>5 5gt<CR>
" nnoremap <Leader>6 6gt<CR>
" nnoremap <Leader>7 7gt<CR>
" nnoremap <Leader>8 8gt<CR>
" nnoremap <Leader>9 9gt<CR>
" nnoremap <Leader>n :tabnew<CR>
" nnoremap <Leader>x :tabclose<CR>


"  - |     --  Split with leader
nnoremap <Leader>- :sp<CR>
nnoremap <Leader>\| :vsp<CR>


" EDITOR
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""https://developer.aliyun.com/article/72732

"自动跳转到粘贴文本的最后
" 使用 ppppp 进行多行多次粘贴操作
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap <silent> ze p`]


" 通过以下的配置可以避免缓冲区的内容被删除的文本内容所覆盖（放到~/.vimrc文件的最后）
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


" 通过以下的配置可以避免缓冲区的内容被删除的文本内容所覆盖（放到~/.vimrc文件的最后）
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()


" To apply the macro to all lines you need a little trick I learned from Drew Neil’s
" awesome book practical vim. Add the following script (visual-at.vim) to your vim
" configuration. This allows you to visually select a section and then hit @ to run a
" macro on all lines. Only lines which match will change. Without this script the
" macro would stop at lines which don’t match the macro.
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>



"  - |     --  Split with leader
nnoremap <Leader>- :sp<CR>
nnoremap <Leader>\| :vsp<CR>


" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"macos 默认alt 是插入,配置term2 把alt应设置esc+,需要把英文字符都映射一下,就是让按<M -字符 为alt+字符

" ref https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
for i in range(97,122)
  let c = nr2char(i)
  exec "map \e".c." <M-".c.">"
  exec "map! \e".c." <M-".c.">"
endfor


""""""""""""""""""""https://developer.aliyun.com/article/72732

"自动跳转到粘贴文本的最后
" 使用 ppppp 进行多行多次粘贴操作
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]



" 通过以下的配置可以避免缓冲区的内容被删除的文本内容所覆盖（放到~/.vimrc文件的最后）
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()



" nnoremap <leader><CR> :so ~/.config/nvim/init.lua<CR>

nnoremap <Leader>`z :vsp ~/.zshrc<CR>


" quickfix https://frontendmasters.com/courses/vim-fundamentals/quickfix/
"
nnoremap <leader>kk :cnext<CR>
nnoremap <leader>jj :cprev<CR>
nnoremap <leader>oo :copen<CR>



" xxx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype plugin on

" * NERDTree
" Close vim if only window left is NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ref https://medium.com/life-at-moka/step-up-your-game-with-neovim-62ba814166d7
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1 " hide helper
let g:NERDTreeIgnore = ['^node_modules$','^.git','^.umi','^.umi-production','.idea','dist'] " ignore node_modules to increase load speed
let g:NERDTreeStatusline = '' " set to empty to use lightline
" " Toggle
" noremap <silent> <C-b> :NERDTreeToggle<CR>

" " Map to open current file in NERDTree and set size
" nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>

" NERDTree Syntax Highlight
" " Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" " Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
" " Color customization
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" " This line is needed to avoid error
let g:NERDTreeExtensionHighlightColor = {}
" " Sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
" " This line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {}
" " Sets the color for .gitignore files
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
" " This line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {}
" " Sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
" " Sets the color for folders that did not match any rule
" let g:WebDevIconsDefaultFolderSymbolColor = s:beige
" " Sets the color for files that did not match any rule
" let g:WebDevIconsDefaultFileSymbolColor = s:blue

" NERDTree Git Plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



" " Map to open current file in NERDTree and set size
" nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>
nnoremap <leader>e :NERDTreeFind<bar> :vertical resize 45<CR>


" nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
