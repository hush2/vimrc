setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2


function! RunRuby()
    if has('win32')
        if expand('%:p') =~ '_spec'
            nmap <f4> :w!<CR>:silent !d:\ruby187\rspec.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\ruby187\rspec.bat %<CR><esc>        
        elseif expand('%:p') =~ '\.feature$'
			nmap <f4> :w!<CR>:silent !d:\ruby187\cucumber.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\ruby187\cucumber.bat %<CR><esc>        		
		elseif expand('%:p') =~ '\.rbw$'
			nmap <f4> :w!<CR>:silent !d:\ruby187\rbw.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\ruby187\rbw.bat %<CR><esc>
        else
            nmap <f4> :w!<CR>:silent !d:\ruby187\rb.bat %<CR><esc>
            imap <f4> <esc>:w!<CR>:silent !d:\ruby187\rb.bat %<CR><esc>
        endif
    endif
endfunction

au BufEnter *.rb,*.rbw,*.feature call RunRuby()