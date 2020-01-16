" https://github.com/junegunn/vim-plug
"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/pack/plugins/start')

Plug 'fatih/vim-go'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'vim-syntastic/syntastic'
Plug 'vimwiki/vimwiki'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'Shadowsith/vim-dotnet'

Plug 'xiote/link.vim'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

cabbre cl call ClearScreen()
cabbre cp !cp % 
cabbre cpkara !cp % ~/.config/karabiner/karabiner.json
cabbre del bdelete
cabbre df DiffOrig
cabbre ga Git add %
cabbre gc Git commit -a -m %
cabbre gcm Git commit -a 
cabbre gcam Git commit -a --amend
cabbre git Git

cabbre gitbranch Git branch
cabbre listbranch Git branch
cabbre lb Git branch

cabbre currentbranch Git rev-parse --abbrev-ref HEAD
cabbre currbr Git rev-parse --abbrev-ref HEAD
cabbre printworkingbranch Git rev-parse --abbrev-ref HEAD
cabbre pwb Git rev-parse --abbrev-ref HEAD

cabbre gitbranchd GitBranchD
cabbre deletebranch GitBranchD
cabbre db GitBranchD
cabbre deletenewbranch Git branch -D new
cabbre dnb Git branch -D new
cabbre removebranch GitBranchD
cabbre rmbr GitBranchD
cabbre rb GitBranchD
cabbre removenewbranch Git branch -D new
cabbre rmnbr Git branch -D new
cabbre rmnb Git branch -D new
cabbre rnb Git branch -D new

cabbre gitcheckout GitCheckout
cabbre changebranch GitCheckout
cabbre chb GitCheckout
cabbre cb GitCheckout
cabbre gitcheckoutm Git checkout master
cabbre changemasterbranch Git checkout master
cabbre chmb Git checkout master
cabbre cmb Git checkout master
cabbre gitcheckoutn Git checkout new
cabbre changenewbranch Git checkout new
cabbre chnb Git checkout new
cabbre cnb Git checkout new

cabbre gitcheckoutb GitCheckoutB
cabbre newbranch GitCheckoutB
cabbre nb GitCheckoutB
cabbre makebranch GitCheckoutB
cabbre mkbr GitCheckoutB
cabbre gitcheckoutbn Git checkout -B new
cabbre newnewbranch Git checkout -B new
cabbre nnb Git checkout -B new
cabbre makenewbranch Git checkout -B new
cabbre mknbr Git checkout -B new
cabbre mknb Git checkout -B new

cabbre gitcheckoutcurrentfile Git checkout -- %
cabbre restoreme Git checkout -- %
cabbre rsme Git checkout -- %

cabbre gpu Git push --set-upstream origin
cabbre gpun Git push --set-upstream origin new
cabbre gd Git diff
cabbre gitwk edit ~/github.com/xiote/wiki/git/index.md 
cabbre gl Git log
cabbre gorun GoRun
cabbre gobuild GoBuild
cabbre gob GoBuild
cabbre gu Git pull
cabbre gp Git push
cabbre gs Git status
cabbre kara edit ~/github.com/xiote/karabiner/karabiner.json
cabbre me %
cabbre memo edit ~/github.com/xiote/wiki/memo/index.md
cabbre ne bn
cabbre pr bp
cabbre oswk edit ~/github.com/xiote/wiki/os/index.md 
cabbre rl VimwikiRenameLink
cabbre rootwk edit ~/github.com/xiote/wiki/index.md 
cabbre some source %
cabbre sudotee sudo tee % 
cabbre ss suspend
cabbre tc tabclose
cabbre tl GetLink
cabbre tn tabnew 
cabbre plugupdate PlugUpdate
cabbre pu PlugUpdate
cabbre ub edit ~/github.com/xiote/ubuntu/18.04/Custom-Dockerfile
cabbre vimlink edit ~/github.com/xiote/link.vim/plugin/link.vim
cabbre vimrc edit ~/github.com/xiote/vim/.vimrc
cabbre vimwk edit ~/github.com/xiote/wiki/vim/index.md 
cabbre wc w <BAR> call ClearScreen() <BAR> silent Git add % <BAR> Git commit -a -m %
cabbre wkall ~/github.com/xiote/wiki/*/*
cabbre ws w <BAR> source % <BAR> call ClearScreen() <BAR> silent Git add % <BAR> Git commit -a -m  % 
cabbre zshrc edit ~/github.com/xiote/zsh/.zshrc
cabbre snum set number! relativenumber!

command! -nargs=1 Echo :let @"=Echo(<f-args>)
command! -nargs=+ GitCommit :call GitCommit(<f-args>)
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

filetype plugin on

"function! Demo()
"  let curline = getline('.')
"  call inputsave()
"  let name = input('Enter name: ')
"  call inputrestore()
"  call setline('.', curline . ' ' . name)
"endfunction


command! -nargs=* GitCheckout :call GitCheckout(<f-args>)
command! -nargs=* GitCheckoutB :call GitCheckoutB(<f-args>)
command! -nargs=* GitBranchD :call GitBranchD(<f-args>)

function! GitCheckout()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git checkout' branch
endfunction

function! GitCheckoutB()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git checkout -B' branch
endfunction

function! GitBranchD()
    call inputsave()
    let branch = input('')
    call inputrestore()
    execute 'Git branch -D' branch
endfunction


"function! GitCommit(path,...)
"    if a:0 > 0
"        " message
"        execute 'Git commit -a -m' a:1
"    else
"        execute 'Git commit -a -m' a:path
"    endif
"endfunction

function! Echo(message)
    return a:message
endfunction

function! ClearScreen()
    silent !clear
    redraw!
endfunction

hi TabLineFill term=bold cterm=bold ctermbg=0

iabbre ``` ```<CR>```<UP>
iabbre c cabbre
iabbre r resolve # 

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

" Use the vim-plug plugin manager: https://github.com/junegunn/vim-plug
" Remember to run :PlugInstall when loading this vimrc for the first time, so
" vim-plug downloads the plugins listed.
"silent! if plug#begin('~/.vim/plugged')
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'w0rp/ale'
"call plug#end()
"endif

" Note: this is required for the plugin to work
filetype indent plugin on

" Use the stdio OmniSharp-roslyn server
let g:OmniSharp_server_stdio = 1

" Set the type lookup function to use the preview window instead of echoing it
"let g:OmniSharp_typeLookupInPreview = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 5

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview

" Fetch full documentation during omnicomplete requests.
" By default, only Type/Method signatures are fetched. Full documentation can
" still be fetched when you need it with the :OmniSharpDocumentation command.
"let g:omnicomplete_fetch_full_documentation = 1

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

" Update semantic highlighting after all text changes
let g:OmniSharp_highlight_types = 3
" Update semantic highlighting on BufEnter and InsertLeave
" let g:OmniSharp_highlight_types = 2

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
" let g:OmniSharp_want_snippet=1
