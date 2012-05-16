:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "mycolors"

:hi Normal gui=none guifg=white guibg=#1f3048
:hi Cursor guibg=white gui=none guifg=#004080
:hi VertSplit guibg=#c2bfa5 gui=none guifg=grey40 gui=none cterm=reverse
:hi Folded guibg=steelblue guifg=black ctermfg=grey ctermbg=darkgrey
:hi FoldColumn guibg=steelblue guifg=black ctermfg=4 ctermbg=7
:hi IncSearch gui=none guifg=green guibg=blue cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg gui=none guifg=goldenrod cterm=none ctermfg=brown gui=none
:hi MoreMsg gui=none guifg=SeaGreen ctermfg=darkgreen gui=none
:hi NonText gui=none guifg=DarkGrey guibg=black ctermfg=grey
:hi Question gui=none guifg=springgreen ctermfg=green gui=none
:hi Search guibg=blue gui=none guifg=yellow cterm=none ctermfg=grey ctermbg=red
:hi SpecialKey gui=none guifg=yellowgreen ctermfg=darkgreen
:hi StatusLine guibg=#c2bfa5 gui=none guifg=black gui=none cterm=reverse
:hi StatusLineNC guibg=#c2bfa5 gui=none guifg=grey40 gui=none cterm=reverse
:hi Title gui=none guifg=gold ctermfg=yellow gui=none
:hi Statement gui=none guifg=white ctermfg=white gui=none
:hi Visual gui=none gui=none guifg=white guibg=#008040 cterm=reverse
:hi WarningMsg gui=none guifg=salmon ctermfg=1
:hi String gui=none guifg=#FFFF88 ctermfg=darkcyan
:hi Comment ctermfg=11 gui=none guifg=grey40 gui=italic
:hi Constant gui=none guifg=#55AAFF  ctermfg=brown
:hi Special gui=none guifg=white ctermfg=brown
:hi Identifier gui=none guifg=salmon ctermfg=red
:hi Include gui=none guifg=white ctermfg=lightblue
:hi PreProc gui=none guifg=#aad4ff
:hi Operator gui=none guifg=grey ctermfg=grey
:hi Define gui=none guifg=#FFAAFF ctermfg=yellow
:hi Type gui=none guifg=white ctermfg=2
:hi Function gui=none guifg=#80FFFF ctermfg=brown
:hi Structure gui=none guifg=white ctermfg=green
:hi LineNr gui=none guifg=#666666
:hi Ignore gui=none guifg=grey40 ctermfg=7
:hi Todo gui=none guifg=orangered guibg=yellow2
:hi Directory ctermfg=darkcyan
:hi ErrorMsg gui=none guifg=White guibg=Red ctermfg=7 ctermbg=1
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete ctermfg=4 ctermbg=6
:hi DiffText ctermbg=1
:hi Underlined cterm=underline ctermfg=5
:hi Error gui=none guifg=White guibg=Red ctermfg=7 ctermbg=1
:hi SpellErrors gui=none guifg=White guibg=Red ctermfg=7 ctermbg=1

:hi Number gui=none guifg=#ffaa55
:hi CursorLine guibg=#113B5A
:hi Pmenu guibg=#0080c0 gui=none
:hi PmenuSel guibg=#0000ff gui=none
:hi MatchParen gui=underline guifg=goldenrod guibg=#113B5a
:hi SignColumn guibg=#113B5a guifg=white

:hi PythonSelf gui=none guifg=lightblue gui=italic
:hi djangotagmarkers guibg=#0080c0 gui=none guifg=white
:hi djangovariablemarkers guibg=#0080c0 gui=none guifg=white

:hi htmlTag  guifg=#FFFFFF
:hi htmlEndTag guifg=#FFFFFF
:hi htmlTagName guifg=#FFFFFF
:hi htmlArg guifg=#00FFFF

:hi phpVarSelector guifg=lightblue2
":hi phpIdentifier guifg=lightsteelblue
:hi phpIdentifier guifg=slategray
:hi phpSuperglobal guifg=deepskyblue1

:hi phpIntVar guifg=red
:hi phpParent guifg=#cccccc

:hi phpRegionDelimiter guifg=grey85 guibg=steelblue

:hi phpEcho guifg=#00ffff
:hi phpRelation guifg=white
:hi phpDefine guifg=palegreen
:hi phpStatement guifg=white
:hi phpCoreConstant guifg=orange1
:hi phpSemicolon guifg=darkgrey

":hi javaScriptSpecial gui=none guifg=#FFFFFF
":hi javaScriptSpecialCharacter gui=none guifg=#FFFFFF
:hi javaScriptIdentifier guifg=cyan
