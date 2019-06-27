" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	laekov <laekov@163.com>	
" Last Change:	2015 Feb
"
hi clear
set background=dark
syntax reset
let g:colors_name='pineapple'
if has('gui')
	hi Normal guibg=#000000 guifg=white
	hi SpecialKey term=bold ctermfg=4 guifg=Blue
	hi Directory term=bold ctermfg=4 guifg=Blue
	hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
	hi IncSearch term=reverse cterm=reverse gui=reverse
	hi Search term=reverse guibg=Blue guifg=White
	hi MoreMsg term=bold ctermfg=2 gui=bold guifg=White
	hi ModeMsg term=bold cterm=bold gui=bold
	hi LineNr term=underline ctermfg=3 guifg=Pink guibg=#222222
	hi Question term=standout ctermfg=2 gui=bold guifg=White
	hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold guifg=White guibg=Grey35
	hi StatusLineNC term=reverse cterm=reverse gui=bold guifg=Grey10 guibg=Gray85
	hi VertSplit guibg=Pink guifg=Black
	hi Title term=bold ctermfg=5 gui=bold guifg=DeepPink3
	hi Visual term=reverse cterm=reverse gui=reverse guifg=Grey80 guibg=fg
	hi VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
	hi WarningMsg term=standout ctermfg=1 gui=bold guifg=Red
	hi WildMenu term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
	hi Folded term=standout ctermfg=4 ctermbg=7 guifg=Black guibg=#e3c1a5
	hi FoldColumn term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Gray80
	hi DiffAdd term=bold ctermbg=4 guibg=White
	hi DiffChange term=bold ctermbg=5 guibg=#edb5cd
	hi DiffDelete term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=LightBlue guibg=#f6e8d0
	hi DiffText term=reverse cterm=bold ctermbg=1 gui=bold guibg=#ff8060
	hi Cursor guifg=black guibg=white
	hi lCursor guifg=bg guibg=fg
	hi CursorLine guibg=#222222
	hi CursorLineNr guibg=#222222 guifg=red
	hi NonText guifg=green guibg=#1a1a1a
	" Colors for syntax highlighting
	hi Comment term=bold ctermfg=4 guifg=Cyan
	hi Constant term=underline ctermfg=1 guifg=Yellow
	hi Special term=bold ctermfg=5 guifg=#ff9c3a
	hi Identifier term=underline ctermfg=6 guifg=#9999ff
	hi Statement term=bold ctermfg=3 gui=bold guifg=#09f93f
	hi PreProc term=underline ctermfg=5 guifg=#888888
	hi Type term=underline ctermfg=2 gui=bold guifg=#598ff9
	hi Ignore cterm=bold ctermfg=7 guifg=bg
	hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Red
	hi Todo term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
else
	hi Normal ctermfg=white 
	hi ErrorMsg cterm=standout cterm=bold ctermfg=7 ctermbg=1
	hi IncSearch cterm=reverse ctermbg=1 ctermfg=7
	hi Search cterm=reverse ctermbg=7 ctermfg=blue
	hi Visual cterm=reverse
	if $TERM == 'xterm-256color'
	"	hi NonText cterm=bold ctermbg=232 ctermfg=2
	"	hi Type cterm=bold ctermfg=4
	"	hi Special cterm=bold ctermfg=172
	"	hi NonText cterm=bold ctermbg=234 ctermfg=2
		hi Type cterm=bold ctermfg=4
		hi Special cterm=bold ctermfg=1
	else
	"	hi NonText cterm=bold ctermbg=8 ctermfg=2
		hi Type cterm=bold ctermfg=32
		hi Special cterm=bold ctermfg=1
	endif
	hi LineNr cterm=bold ctermfg=5
	hi ModeMsg cterm=bold
	hi StatusLine cterm=bold ctermfg=7 ctermbg=8
	hi StatusLineNC ctermfg=7 ctermbg=8
	hi VertSplit ctermfg=0 ctermbg=5
	hi Folded cterm=standout ctermfg=3 ctermbg=4
	hi FoldedColumn cterm=standout ctermfg=3 ctermbg=4
	"For syntax hilighter
	hi Comment cterm=bold ctermfg=6
	hi Constant ctermfg=yellow
	hi Indentifier cterm=bold ctermfg=2
	hi Statement cterm=bold ctermfg=2
	hi PreProc cterm=bold ctermfg=darkgrey
	hi Ignore ctermfg=7
	hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1
	hi Todo term=standout ctermbg=6 ctermfg=0
endif
