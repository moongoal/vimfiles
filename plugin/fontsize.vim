" function change_font_size(delta)
"   let current = &guifont
"   let pattern = "([^:]+):h(%d+)"
"   let found = string.match(current, pattern)
" 
"   if found != -1
"     let name = matchstr(current, pattern)
"     local new_size = tonumber(size) + delta
"     set guifont=string.format("%s:h%d", name, new_size)
"   endif
" endfunction
" 
" vim.api.nvim_create_user_command("IncreaseFontSize", function()
"   change_font_size(1)
" end, {})
" 
" vim.api.nvim_create_user_command("DecreaseFontSize", function()
"   change_font_size(-1)
" end, {})

