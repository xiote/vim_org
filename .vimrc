autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

cabbre cl !clear
cabbre D :bd
cabbre ga Git add %
cabbre gc Git Commit -a -m %
cabbre gd Git diff
cabbre gitwk edit ~/Dropbox/wiki/git/index.md 
cabbre gl Git Log
cabbre gpl Git pull
cabbre gps Git push
cabbre gs Git status
cabbre gw w <BAR> Git Commit -a -m % <BAR> Git push 
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre N enew
cabbre memo edit ~/Dropbox/wiki/memo/index.md
cabbre oswk edit ~/Dropbox/wiki/os/index.md 
cabbre rl VimwikiRenameLink
cabbre rootwk edit ~/Dropbox/wiki/index.md 
cabbre sudotee sudo tee % > /dev/null
cabbre tc tabclose
cabbre tn tabnew 
cabbre T tabnew 
cabbre vimwk edit ~/Dropbox/wiki/vim/index.md 
cabbre vrc edit ~/github.com/xiote/vim/.vimrc
cabbre wkall ~/Dropbox/wiki/*/*
cabbre zrc edit ~/github.com/xiote/zsh/.zshrc

filetype plugin on

hi TabLineFill term=bold cterm=bold ctermbg=0

iabbre ``` ```<CR>```<UP>

let g:vimwiki_list = [
    \{
    \    'path': '~/Dropbox/wiki/',
    \    'ext' : '.md'
    \}
\]

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
