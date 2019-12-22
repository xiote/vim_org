set number
set hlsearch
set incsearch
set autochdir
set nowrapscan

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

hi TabLineFill term=bold cterm=bold ctermbg=0

" zsh shell
set shell=/usr/bin/zsh

" vimwiki "
set nocompatible
filetype plugin on
syntax on

let g:vimwiki_list = [
    \{
    \    'path': '~/Dropbox/wiki/',
    \    'ext' : '.md'
    \}
\]


" 탭설정 "
set shiftwidth=4 
set softtabstop=4 
set expandtab

nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
nnoremap Q :q<CR>

" insert no recursive map "
" markdown template "
noremap \t I# title<CR><CR>## See also<CR><CR><ESC>:1<CR>:s/title/
iabbre ``` ```<CR>```<UP>

cabbre vimrc ~/Dropbox/vim/.vimrc
command! Vimrc edit ~/Dropbox/vim/.vimrc

cabbre zshrc ~/Dropbox/zsh/.zshrc
command! Zshrc edit ~/Dropbox/zsh/.zshrc

cabbre karabiner ~/Dropbox/karabiner/karabiner.json
command! Kara edit ~/Dropbox/karabiner/karabiner.json

cabbre rootwk ~/Dropbox/wiki/index.md 
command! Rootwk edit ~/Dropbox/wiki/index.md 

cabbre oswk ~/Dropbox/wiki/os/index.md 
command! Oswk edit ~/Dropbox/wiki/os/index.md 

cabbre gitwk ~/Dropbox/wiki/git/index.md 
command! Gitwk edit ~/Dropbox/wiki/git/index.md 

cabbre memowk ~/Dropbox/wiki/memo/index.md 
command! Memowk edit ~/Dropbox/wiki/memo/index.md
command! Memo edit ~/Dropbox/wiki/memo/index.md

cabbre vimwk ~/Dropbox/wiki/vim/index.md 
command! Vimwk edit ~/Dropbox/wiki/vim/index.md 

cabbre wkall ~/Dropbox/wiki/*/*

cabbre renamelink VimwikiRenameLink
cabbre sudowrite sudo tee % > /dev/null
cabbre me %
cabbre N enew

command! T tabnew 
command! Tn tabnew 
command! Tc tabclose
command! S source %

command! C :!clear
command! Ga Git add %
command! Gs Git status
command! Gc Git Commit
command! Gps Git push
command! Gpl Git pull
