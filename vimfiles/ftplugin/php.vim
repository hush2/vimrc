function! RunPHP()
    if has('win32')        		
        if expand('%:p') =~ '\\classes\\'
			nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\_stest.bat %<CR><esc>
			imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\_stest.bat %<CR><esc>        
        elseif expand('%:p') =~ '\\tests\\'
			nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\phpunit.bat %<CR><esc>
			imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\phpunit.bat %<CR><esc>        			
        elseif expand('%:p') =~ '\.php$'
			nmap <f4> :w!<CR>:silent !d:\dropbox\compiler\_php.bat %<CR><esc>
			imap <f4> <esc>:w!<CR>:silent !d:\dropbox\compiler\_php.bat %<CR><esc>
        endif
    endif
endfunction

au BufEnter *.php call RunPHP()