" vim:foldmethod=marker foldlevel=0

" Files {{{1
set noswapfile
au BufNewFile,BufRead *.c,*.h set syntax=c

" Text editing {{{1
syntax on

set encoding=utf-8 ff=unix makeencoding=utf-8
set autoindent expandtab smartindent
set nosmarttab shiftwidth=4 tabstop=4 softtabstop=4
set number hlsearch
set bs=indent,eol,start,nostop


" Interface {{{1
colorscheme sorbet

set nocp
set notimeout
set shortmess+=I
set foldmethod=manual
set laststatus=2
set cursorline

let g:netrw_keepdir=0

" GUI {{{1
if has("gui_running")
    set mousehide
    set guioptions=cgk\!
    set guifont=Inconsolata:h16:W500:cANSI:qDRAFT
    set guifont=Fira_Code:h12:cANSI:qDRAFT
    set guicursor=a:block-blinkon1000-blinkoff0,i:block-blinkon500-blinkoff500
    au GUIEnter * simalt ~x
endif

" Fuzzy finder {{{1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" Sessions {{{1
set ssop=folds,globals,localoptions,resize,sesdir,slash,tabpages,terminal,unix

 
" Plugins & Additional configuration files {{{1
filetype plugin on

runtime! config/**/*.vim
