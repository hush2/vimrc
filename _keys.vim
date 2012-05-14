imap <c-space> <esc>
nmap Y y$

nmap <f1> :bprevious<CR>
imap <f1> <esc>:bprevious<CR>
nmap <f2> :bnext<CR>
imap <f2> <esc>:bnext<CR>
nmap <f3> :b#<CR>
imap <f3> <esc>:b#<CR>

nmap <space> :
map <a-x> :q!<CR>
cmap <c-space> <ESC>
nmap <a-d> :bd<cr>
vmap <tab> >
vmap <s-tab> <
nmap <c-l> <esc>$
nmap <c-h> <esc>^
imap <c-l> <esc>A
imap <c-h> <esc>I
nmap <c-d> 0D
imap <c-u> <esc>u
nmap vv V

nmap <a-1> vi'
nmap <a-2> vi"
nmap <a-3> vi(
nmap <a-4> vi{
nmap <a-5> vi[

map <f5> :set wrap!<cr>
nmap <a-f> za
nmap <c-s> :w!<cr>
imap <c-s> <esc>:w!<cr>

map <leader>b \c<space>
map <leader>v "+gP
map <leader>p "+gP
nmap <leader>a ggVG

"--- abbreviations
func Eatchar(pat)
   let c = nr2char(getchar(0))       
   return (c =~ a:pat) ? '' : c      
endfunc

"ia this $this-><c-r>=Eatchar('\s')<cr>
"ia vd var_dump($);<left><left><c-r>=Eatchar('\s')<cr>
"ia pr print_r($);<left><left><c-r>=Eatchar('\s')<cr>

ia hr =>
ia dr ->

imap <c-t>= <c-x>=
imap <c-t>- <c-x>_

let g:SuperTabMappingBackward = '<nop>'

au BufEnter * map <f4> <nop>

"-- jump to $var
noremap L f$
noremap H F$