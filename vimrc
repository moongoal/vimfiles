" vim:foldmethod=marker foldlevel=0

" Files {{{1

filetype indent off
set noswapfile

au BufNew,BufRead * setlocal ffs=unix,dos
au BufNewFile,BufRead *.c,*.h setlocal syntax=c

" Text editing {{{1

set makeencoding=utf-8
set autoindent expandtab number hlsearch
set nosmartindent nocindent nosmarttab
set shiftwidth=2 tabstop=2 softtabstop=2
set bs=indent,eol,start,nostop
set completeopt=fuzzy,menu,popup,preview,longest

if has("win32")
  set ssl
endif

" Interface {{{1

set nocompatible notimeout
set cursorline
set shortmess+=I
set foldmethod=manual
set laststatus=2

let g:netrw_keepdir=0

if has("gui_running")
    set mousehide
    set guioptions=CM
    set guifont=Fira_Code:h16
    set guicursor=a:block-blinkon1000-blinkoff0,i:block-blinkon500-blinkoff500
endif

if has("termguicolors")
  set termguicolors
endif

syntax on
filetype on

colorscheme gruvbox

" System Interface {{{1
set shell=nu
set sp=\|\ tee\ {\ save\ -f\ -r\ %s\ }
set shcf=-c shq=\" sxq=

" Sessions {{{1
set ssop=folds,globals,localoptions,resize,sesdir,slash,tabpages,terminal,unix

" Plugins {{{1

" Key Bindings {{{1
" Navigation {{{2
nnoremap <silent> <TAB> <Cmd>tabnext<CR>
nnoremap <S-TAB> <Cmd>tabprev<CR>
nnoremap <Leader>t <Cmd>tabnew<CR>
nnoremap <F2> <Cmd>NERDTreeToggle<CR>
nnoremap <C-F2> <Cmd>NERDTreeFind<CR>
nnoremap <S-F2> <Cmd>NERDTreeFocus<CR>

" Panes {{{2
nnoremap <silent> <Leader>b <Cmd>buffers<CR>
nnoremap <silent> <Leader>k <Cmd>terminal<CR>

" Editing {{{2
nnoremap <silent> <Leader>= <Cmd>IncreaseFontSize<CR>
nnoremap <silent> <Leader>- <Cmd>DecreaseFontSize<CR>

" IDE {{{2
" local telescope = require('telescope.builtin')

nnoremap <Leader>ff :find 
nnoremap <Leader>fb :buffers<CR>:b 

nnoremap <Leader>bi :call project#GenTags()<CR>
nnoremap <Leader>bc :call project#Configure()<CR>
nnoremap <Leader>bb :make<CR>
nnoremap <Leader>bt :call project#Test()<CR>

nnoremap <Leader>en :cnext<CR>
nnoremap <Leader>ep :cprevious<CR>
nnoremap <Leader>ee :cc<CR>
nnoremap <Leader>el :cl<CR>

