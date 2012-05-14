let g:session_autoload = 'no'

"==== zen coding 
"let g:user_zen_expandabbr_key = '<c-E>'
"let g:user_zen_expandword_key= '<c-e>'
"let g:user_zen_leader_key = '<c-e>'
"let g:use_zen_complete_tag = 1
imap <c-e> <c-y>,

"==== supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

"==== yankring
let g:yankring_max_element_length = 4096
let g:yankring_clipboard_monitor = 0
let g:yankring_n_keys = 'x yy dd yw dw ye de yE dE yiw diw yaw daw y$ d$ D yG dG ygg dgg'
let g:yankring_max_history  = 20
let g:yankring_min_element_length = 6
let g:yankring_persist = 0
nnoremap <silent> <a-p> :YRShow<cr>

"==== buftabs
let g:buftabs_only_basename=1
let g:buftabs_in_statusline=1
let g:buftabs_active_highlight_group="PMenu"

nmap <f8> :ToggleBookmark<CR>
nmap <s-f1> :NextBookmark<CR>
nmap <s-f2> :PreviousBookmark<CR>
let g:bookmarking_menu = 0

"let g:reload_on_write = 1

"==== delimate
let delimitMate_balance_matchpairs = 1