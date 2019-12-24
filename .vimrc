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
cabbre karabiner ~/Dropbox/karabiner/karabiner.json
cabbre N enew
cabbre oswk ~/Dropbox/wiki/os/index.md 
cabbre renamelink VimwikiRenameLink
cabbre rootwk ~/Dropbox/wiki/index.md 
cabbre Sw sudo tee % > /dev/null
cabbre vimrc ~/Dropbox/vim/.vimrc
cabbre vimwk ~/Dropbox/wiki/vim/index.md 
cabbre wkall ~/Dropbox/wiki/*/*
cabbre zshrc ~/Dropbox/zsh/.zshrc

command! C :!clear
command! Cm edit ~/Dropbox/wiki/git/Commit messages.md
command! D :bd
command! Gitwk edit ~/Dropbox/wiki/git/index.md 
command! K edit ~/Dropbox/karabiner/karabiner.json
command! Kara edit ~/Dropbox/karabiner/karabiner.json
command! M edit ~/Dropbox/wiki/memo/index.md
command! Memo edit ~/Dropbox/wiki/memo/index.md
command! Memowk edit ~/Dropbox/wiki/memo/index.md
command! Oswk edit ~/Dropbox/wiki/os/index.md 
command! Rl VimwikiRenameLink
command! Rootwk edit ~/Dropbox/wiki/index.md 
command! S source %
command! T tabnew 
command! Tc tabclose
command! Tn tabnew 
command! V edit ~/Dropbox/vim/.vimrc
command! Vimrc edit ~/Dropbox/vim/.vimrc
command! Vimwk edit ~/Dropbox/wiki/vim/index.md 
command! Zshrc edit ~/Dropbox/zsh/.zshrc

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
set shell=/usr/bin/zsh
set shiftwidth=4 
set softtabstop=4 

syntax on
