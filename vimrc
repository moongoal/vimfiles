" vim:foldmethod=marker foldlevel=0

" Files {{{1
set noswapfile

" Text editing {{{1
syntax on

set encoding=utf-8 ff=unix makeencoding=utf-8
set autoindent expandtab smartindent
set nosmarttab shiftwidth=4 tabstop=4 softtabstop=4
set number hlsearch


" Interface {{{1
colorscheme torte

set nocp
set notimeout
set shortmess+=I
set foldmethod=syntax
set laststatus=2

" Fuzzy finder {{{1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" Sessions {{{1
set ssop=folds,globals,localoptions,resize,sesdir,slash,tabpages,terminal,unix

 
" Plugins & Additional configuration files {{{1
filetype plugin on

runtime! config/**/*.vim
