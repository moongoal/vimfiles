function s:change_font_size(delta)
  let current = &guifont
  let pattern = "\\([^:]\\+\\):h\\(\\d\\+\\)"
  let res = matchlist(current, pattern)

  if len(res) > 0
    let name = res[1]
    let size = str2nr(res[2])
    let new_size = size + a:delta
    let newfont = printf("%s:h%d", name, new_size)

    exe "set guifont=" .. escape(newfont, " ")
  endif
endfunction

command IncreaseFontSize call s:change_font_size(1)
command DecreaseFontSize call s:change_font_size(-1)

