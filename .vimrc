autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

cabbre cl call ClearScreen()
cabbre df DiffOrig
cabbre fd bdelete
cabbre ga Git add %
cabbre gc Git commit -a -m %
cabbre gcp call ClearScreen() <BAR> Git pull <BAR> Git commit -a -m % <BAR> Git push
cabbre gd Git diff
cabbre gitwk edit ~/github.com/xiote/wiki/git/index.md 
cabbre gl GetLink
cabbre gorun GoRun
cabbre gobuild GoBuild
cabbre gu Git pull
cabbre gp Git push
cabbre gs Git status
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre me %
cabbre memo edit ~/github.com/xiote/wiki/memo/index.md
cabbre oswk edit ~/github.com/xiote/wiki/os/index.md 
cabbre rl VimwikiRenameLink
cabbre rootwk edit ~/github.com/xiote/wiki/index.md 
cabbre some source %
cabbre sudotee sudo tee % 
cabbre tc tabclose
cabbre tn tabnew 
cabbre ub edit ~/github.com/xiote/ubuntu/18.04/Custom-Dockerfile
cabbre vimlink edit ~/github.com/xiote/link.vim/plugin/link.vim
cabbre vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md 
cabbre wc w <BAR> call ClearScreen() <BAR> silent Git add % <BAR> Git commit -a -m % <BAR> redraw!
cabbre wkall ~/github.com/xiote/wiki/*/*
cabbre ws w <BAR> source % <BAR> call ClearScreen() <BAR> silent Git add % <BAR> Git commit -a -m % <BAR> redraw!
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc
cabbre snum set number! relativenumber!

command! -nargs=1 Echo :let @"=Echo(<f-args>)
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

filetype plugin on

function! Echo(message)
    return a:message
endfunction

function! ClearScreen()
    silent !clear
    redraw!
endfunction

hi TabLineFill term=bold cterm=bold ctermbg=0

iabbre ``` ```<CR>```<UP>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:vimwiki_list = [
    \{
    \    'path': '~/github.com/xiote/wiki/',
    \    'ext' : '.md'
    \}
\]

nmap \w Gonew<ESC>:VimwikiFollowLink<CR>:VimwikiFollowLink<CR>\t

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
set shiftwidth=4 
set softtabstop=4 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax on
