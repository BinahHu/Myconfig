" vimrc file by laekov
set guioptions-=m
set guioptions-=T

source $VIMRUNTIME/mswin.vim
behave mswin

set nu
set softtabstop=4
set tabstop=4
set shiftwidth=4
set nobackup
set mouse=a
set fdm=marker
set guifont=Source\ Code\ Pro\ Semibold:h16
set hlsearch
set ruler
if has('gui')
	set columns=1000
	set lines=1000
	set cursorline
endif

set enc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"map <F2> : call Save() <CR>
map OQ : <esc>
map <F2> :w <CR>
imap <F2> <ESC>:w <CR>i
map <C-x> : !mvim -ro % <CR>
map <F5> : !lldb %< <CR>
map <F7> : call Compile() <CR>
map <F8> : !bash check.sh <CR>
map <F10> : !./%< <.in <CR>
map <F9> : call Run() <CR>
map <F4> : !echo % <CR>
map <C-m> : res <CR> : vert res <CR> : res <CR> 

syn keyword Type dint
syn keyword Special PROC
syn keyword Special lld
filetype plugin indent on
syntax enable

colors pineapple

"set makeprg=g++\ %\ -o\ %<\ -g\ -Wall\ -Wextra\ -DLAEKOV_LOCAL

func Save()
	if &filetype=='javascript'
		set expandtab
	endif
	exec "w"
endfunc

func Compile()
	if &modified==1
		exec "w"
	endif
	if &filetype=='cpp'
		if findfile('makefile', '.') == 'makefile'
			exec "!make"
		else
			exec "!g++ % -o %< -g -Wall -Wextra -DLAEKOV_LOCAL &&  size %<"
		endif
	elseif &filetype=='make'
		exec "make"
	elseif &filetype=='c'
		exec "!gcc % -o %< -g"
	elseif &filetype=='pascal'
		exec "!fpc % -g"
	elseif &filetype=='sh'
		exec "!chmod +x %"
	elseif &filetype=='java'
		exec "!javac %"
	elseif &filetype=='javascript'
		exec "!node bin/www"
	elseif &filetype=='tex'
		exec "!xelatex %"
	endif
endfunc

func Run()
	exec "w"
	if &filetype=='python'
		exec "!python2 %"
	elseif &filetype=='sh'
		exec "!bash ./%"
	elseif &filetype=='java'
		exec "!java Main"
	elseif &filetype=='html'
		exec "!open ./%"
	elseif &filetype=='tex'
		exec "!open %<.pdf"
	elseif &filetype=='javascript'
		exec "!node %"
	elseif &filetype=='php'
		exec "!php %"
	elseif &filetype=='markdown'
		exec "!open %"
	elseif &filetype=='lisp'
		exec "!gcl -f %"
	else
		exec "!./%<"
	endif
endfunc

vnoremap <C-C> :w !pbcopy<CR><CR>
nmap <C-V> :r !pbpaste<CR><CR>

func Change(a, b)
	exec "!mv ".a:a." ".a:b
endfunc
