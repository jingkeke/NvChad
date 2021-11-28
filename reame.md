# https://nvchad.github.io/features  

## 之前的 .vimrc 的配置然后又不知道怎么改成lua的

 `vim.cmd "source ~/.vimrc_local_nvim"`


## lsp
### lsp-installer 
**这个要执行命令装server** 
```
:LspInstallInfo - opens a graphical overview of your language servers
:LspInstall [--sync] <server> ... - installs/reinstalls language servers. Runs in a blocking fashion if 

```
https://github.com/williamboman/nvim-lsp-installer


### easymotion 烦了,实在不会改了........  2021年11月21日
- 方案二 
 use vim config  
 vim.cmd "source ~/.vimrc_local_nvim"

- 方案一 直接在plugin 上改!!!!!! 哈哈




you have some other autocommand that causes this.
Run *:autocmd CursorHold* to see what autocommands you have registered. You can then try to disable them one by one to see which one is causing problems
