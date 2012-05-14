function! AddEmptyLineBelow()
  call append(line("."), "")
endfunction

function! AddEmptyLineAbove()
  let l:scrolloffsave = &scrolloff
  " Avoid jerky scrolling with ^E at top of window
  set scrolloff=0
  call append(line(".") - 1, "")
  if winline() != winheight(0)
    silent normal! <C-e>
  end
  let &scrolloff = l:scrolloffsave
endfunction

function! DelEmptyLineBelow()
  if line(".") == line("$")
    return
  end
  let l:line = getline(line(".") + 1)
  if l:line =~ '^\s*$'
    let l:colsave = col(".")
    .+1d
    ''
    call cursor(line("."), l:colsave)
  end
endfunction

function! DelEmptyLineAbove()
  if line(".") == 1
    return
  end
  let l:line = getline(line(".") - 1)
  if l:line =~ '^\s*$'
    let l:colsave = col(".")
    .-1d
    silent normal! <C-y>
    call cursor(line("."), l:colsave)
  end
endfunction

noremap <silent> <A-j> :call AddEmptyLineBelow()<CR>
noremap <silent> <A-k> :call AddEmptyLineAbove()<CR>

"=======================================================================

function! MoveLineUp()
  call MoveLineOrVisualUp(".", "")
endfunction

function! MoveLineDown()
  call MoveLineOrVisualDown(".", "")
endfunction

function! MoveVisualUp()
  call MoveLineOrVisualUp("'<", "'<,'>")
  normal gv
endfunction

function! MoveVisualDown()
  call MoveLineOrVisualDown("'>", "'<,'>")
  normal gv
endfunction

function! MoveLineOrVisualUp(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num - v:count1 - 1 < 0
    let move_arg = "0"
  else
    let move_arg = a:line_getter." -".(v:count1 + 1)
  endif
  call MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! MoveLineOrVisualDown(line_getter, range)
  let l_num = line(a:line_getter)
  if l_num + v:count1 > line("$")
    let move_arg = "$"
  else
    let move_arg = a:line_getter." +".v:count1
  endif
  call MoveLineOrVisualUpOrDown(a:range."move ".move_arg)
endfunction

function! MoveLineOrVisualUpOrDown(move_arg)
  let col_num = virtcol(".")
  execute "silent! ".a:move_arg
  execute "normal! ".col_num."|"
endfunction

nnoremap <silent> <C-Up> :<C-u>call MoveLineUp()<CR>
nnoremap <silent> <C-Down> :<C-u>call MoveLineDown()<CR>

"=======================================================================

function! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  "if line("'Z") != line(".")
  "  echo "Stripped whitespace\n"
  "endif
  normal `Z
endfunction

autocmd BufWritePre *.php,*.rb,*.py,*.js :call StripTrailingWhitespace()

"=======================================================================

nnoremap <a-f1> :silent! !start /min d:\dropbox\tools\keyhh.exe -\#klink "<c-r><c-w>" "d:\php_manual_en.chm"<CR><CR>

iabbrev lorem1 Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...
iabbrev lorem2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet sem lectus. Donec quis enim tincidunt nunc ullamcorper hendrerit. Curabitur lobortis euismod vestibulum. In tempus eleifend nisl, ut mattis mi tincidunt nec. Vestibulum mattis sodales vehicula. Vestibulum egestas sollicitudin magna, ac varius mi pellentesque eu. Aenean vitae quam justo.

