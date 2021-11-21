

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



" lsp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ref https://elijahmanor.com/blog/neovim-tmux
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent> gh    <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gH    <cmd>:Telescope lsp_code_actions<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>fo <cmd>lua vim.lsp.buf.formatting_sync(nil, 5000)<CR>
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 5000)
" autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 5000)




" xxx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
