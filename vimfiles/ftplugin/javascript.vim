function! RunDScript()
    if has('win32')        		
        if expand('%:p') =~ '\.js$'
			nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\_ds.bat %<CR><esc>
			imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\_ds.bat %<CR><esc>
        endif
    endif
endfunction

au BufEnter *.js call RunDScript()