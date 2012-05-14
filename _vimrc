set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

set history=50      " keep 50 lines of command line history
set ruler           " show the cursor position all the time
set showcmd         " display incomplete commands
set incsearch       " do incremental searching
set nohlsearch
set ignorecase 
set smartcase
"set smartindent
set noswapfile
set nospell
set nobackup
set nowrap
set winaltkeys=no
"set foldmethod=indent

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on  
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.  
  "filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END
else
  set autoindent        " always set autoindenting on
endif " has("autocmd")

filetype off
call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
filetype plugin indent on

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set textwidth=120        " break lines when line length increases
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smarttab 

set backspace=indent,eol,start whichwrap+=<,>,[,]

set ruler               " show line and column number
set nu
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

"---- disable toolbar
set guioptions-=Te
"---- disable scroll bar
set guioptions+=lrbRL
set guioptions-=lrbRL

" set color for vim console
color blue

" ----------------------------------------------------------------------------------
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
  \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  runtime! plugin/guicolorscheme.vim
  "GuiColorScheme jeff
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  "colorscheme jeff
endif


" ----------------------------------------------------------------------------------
"set scrolloff=20
set shortmess+=atI
set noerrorbells
set autochdir
set hidden
"set cpoptions+=$
set complete-=i
set laststatus=2
"set statusline=#%n\ %m%r\ %f\ [%{&ff}]\ %y\ Col\ %c,\ Line\ %l\ of\ %L\ (%p%%)
set virtualedit=all

set nobomb					
set fileencoding=utf-8

cabbrev vimrc e $MYVIMRC<cr>
cabbrev vimrc2 e $VIM\_vimrc2<cr>

source $VIM\_vimrc2.vim
source $VIM\_plugins.vim
source $VIM\_keys.vim
source $VIM\_temp.vim

au BufRead,BufNewFile *.html,*.htm,*.php set ft=php.html

au FocusLost * :wa