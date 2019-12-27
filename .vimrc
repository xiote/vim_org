autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

cabbre ga Git add %
cabbre gc Git Commit -a -m %
cabbre gd Git diff
cabbre gitwk ~/Dropbox/wiki/git/index.md 
cabbre gl Git Log
cabbre gpl Git pull
cabbre gps Git push
cabbre gs Git status
cabbre N enew
cabbre oswk ~/Dropbox/wiki/os/index.md 
cabbre renamelink VimwikiRenameLink
cabbre rootwk ~/Dropbox/wiki/index.md 
cabbre Sw sudo tee % > /dev/null
cabbre vimwk ~/Dropbox/wiki/vim/index.md 
cabbre wkall ~/Dropbox/wiki/*/*

cabbre C !clear
cabbre D :bd
cabbre G edit ~/Dropbox/wiki/git/index.md 
cabbre Gitwk edit ~/Dropbox/wiki/git/index.md 
cabbre K edit ~/github.com/xiote/karabiner/karabiner.json
cabbre Kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre M edit ~/Dropbox/wiki/memo/index.md
cabbre Memo edit ~/Dropbox/wiki/memo/index.md
cabbre Memowk edit ~/Dropbox/wiki/memo/index.md
cabbre Oswk edit ~/Dropbox/wiki/os/index.md 
cabbre Rl VimwikiRenameLink
cabbre Rootwk edit ~/Dropbox/wiki/index.md 
cabbre T tabnew 
cabbre Tc tabclose
cabbre Tn tabnew 
cabbre V edit ~/github.com/xiote/vim/.vimrc
cabbre Vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre Vimwk edit ~/Dropbox/wiki/vim/index.md 
cabbre W clear <bar> w  <bar> Git Commit -a -m % <bar> Git push
cabbre Zshrc edit ~/github.com/xiote/zsh/.zshrc

filetype plugin on

hi TabLineFill term=bold cterm=bold ctermbg=0

iabbre ``` ```<CR>```<UP>

let g:vimwiki_list = [
    \{
    \    'path': '~/Dropbox/wiki/',
    \    'ext' : '.md'
    \}
\]

nnoremap @ :
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap Q :q<CR>
nnoremap Z :w<CR>

noremap \t I# title<CR><CR>## See also<CR><CR><ESC>:1<CR>:s/title/

runtime macros/matchit.vim

set autochdir
set autowrite
set cul
set expandtab
set hlsearch
set incsearch
set nocompatible
set nowrapscan
set number
set shiftwidth=4 
set softtabstop=4 

syntax on
