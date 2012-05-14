function! RunPython()
    if has('win32')        
		if expand('%:p') =~ '\.pyw$'
			nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\pythonw.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\pythonw.bat %<CR><esc>
        else
            nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\python.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\python.bat %<CR><esc>
        endif
    endif
endfunction

au BufEnter *.py,*.pyw call RunPython()