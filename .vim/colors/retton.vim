" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Steven Vertigan <steven@vertigan.wattle.id.au>
" Last Change:	2006 Sep 23
" Revision #5: Switch main text from white to yellow for easier contrast,
" fixed some problems with terminal backgrounds.

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "retton"
hi Normal		ctermfg=white	        ctermbg=black
hi NonText		ctermfg=blue
hi comment		ctermfg=DarkGray	    ctermbg=black
hi constant		ctermfg=DarkCyan
hi identifier	ctermfg=yellow
hi statement	ctermfg=white	        ctermbg=black
hi preproc		ctermfg=green
hi type			ctermfg=darkgreen	    ctermbg=black
hi special		ctermfg=lightMagenta	ctermbg=black
hi Underlined	ctermfg=cyan	        cterm=underline
hi label		ctermfg=Darkyellow
hi operator		ctermfg=lightRed	    ctermbg=black

hi ErrorMsg		ctermfg=DarkRed
hi WarningMsg	ctermfg=Red
hi ModeMsg		ctermfg=yellow
hi MoreMsg		ctermfg=yellow
hi Error		ctermfg=DarkRed

hi Todo			ctermfg=black	ctermbg=darkYellow
hi Cursor		ctermfg=black	ctermbg=white
hi Search		ctermfg=black	ctermbg=white
hi IncSearch	ctermfg=lightblue	ctermbg=darkYellow
hi LineNr	    ctermfg=cyan
hi title		cterm=bold

hi StatusLineNC	ctermfg=black   ctermbg=blue
hi StatusLine	ctermfg=white    ctermbg=blue
hi VertSplit	ctermfg=blue    ctermbg=blue

hi Visual		term=reverse		ctermfg=black	ctermbg=darkCyan

hi DiffChange	ctermbg=darkGreen	ctermfg=black
hi DiffText		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		ctermbg=blue		ctermfg=black
hi DiffDelete   ctermbg=cyan		ctermfg=black

hi Folded		ctermbg=yellow		ctermfg=black
hi FoldColumn	ctermbg=gray		ctermfg=black
hi cIf0			ctermfg=gray

