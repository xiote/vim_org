autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

cabbre cl !clear
cabbre D bdelete 
cabbre ga Git add %
cabbre gc Git Commit -a -m %
cabbre gd Git diff
cabbre gitwk edit ~/github.com/xiote/wiki/git/index.md 
cabbre gl Git Log
cabbre gpl Git pull
cabbre gps Git push
cabbre gs Git status
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre N enew
cabbre me %
cabbre memo edit ~/github.com/xiote/wiki/memo/index.md
cabbre oswk edit ~/github.com/xiote/wiki/os/index.md 
cabbre rl VimwikiRenameLink
cabbre rootwk edit ~/github.com/xiote/wiki/index.md 
cabbre some source %
cabbre sudotee sudo tee % > /dev/null
cabbre tc tabclose
cabbre tn tabnew 
cabbre T tabnew 
cabbre vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md 
cabbre vrc edit ~/github.com/xiote/vim/.vimrc
cabbre wkall ~/github.com/xiote/wiki/*/*
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc

filetype plugin on

hi TabLineFill term=bold cterm=bold ctermbg=0

iabbre ``` ```<CR>```<UP>

let g:vimwiki_list = [
    \{
    \    'path': '~/github.com/xiote/wiki/',
    \    'ext' : '.md'
    \}
\]

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap Q gQ
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
