" Navigation
nnoremap <silent> <TAB> <Cmd>tabnext<CR>
nnoremap <silent> <S-TAB> <Cmd>tabprev<CR>
nnoremap <silent> <Leader>t <Cmd>tabnew<CR>

" Panes
nnoremap <silent> <F2> <Cmd>Explore<CR>
nnoremap <silent> <Leader>b <Cmd>buffers<CR>
nnoremap <silent> <Leader>k <Cmd>terminal<CR>

" IDE
nnoremap <silent> <Leader>e <Cmd>CocDiagnostics<CR>
nnoremap <silent> <Leader>o <Cmd>CocOutline<CR>
nnoremap <silent> <Leader>i <Cmd>call CocActionAsync('definitionHover')<CR>
nnoremap <silent> <Leader>d <Cmd>call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> <Leader><S-d> <Cmd>call CocActionAsync('jumpDefinition', 'split')<CR>
nnoremap <silent> <Leader><F2> <Cmd>call CocActionAsync('refactor')<CR>
nnoremap <silent> <Leader>a <Cmd>call CocActionAsync('codeAction', 'cursor')<CR>
nnoremap <silent> <Leader><F12> <Cmd>call CocActionAsync('references')<CR>
nnoremap <silent> <Leader><Space> <Cmd>call CocActionAsync('showSignatureHelp')<CR>
