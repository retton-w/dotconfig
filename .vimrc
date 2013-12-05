syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"******	cscope option entry ************************************************
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	"add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	"else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add "CSCOPE_DB
	endif
	set csverb
	set cscopetag
	"set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"****** taglist option entry **********************************************
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=1
"let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_SubMenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=0
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=20
let Tlist_WinWidth=40
let Tlist_Use_Horiz_Window=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"***** winmanager option entry *******************************************
let g:winManagerWidth=20
let g:winManagerWindowLayout='FileExplorer'

"**** minibufexpl********
let g:miniBufExplorerMoreThanOne=200
let g:miniBufExplModSelTarget=1
let g:miniBufExplForceSyntaxEnable=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"***** key map entry *****************************************************
let mapleader='\'
"nnoremap <silent><F3>   :Grep<CR>
nnoremap <silent><F7>   :Rgrep<CR>
map 	<silent><F5> 	:TlistToggle<CR>
nmap 	<silent><F6> 	:NERDTreeToggle<CR>
"nmap 	<silent><F7> 	:make<CR><CR>:cw<CR>
"nmap    <silent><F7>    :DoxA<CR>
nmap    <silent><F8>    :Dox<CR>
map 	<Up> 		    gk
map 	<Down> 		    gj
map 	<silent><Right> :bn<CR>
map 	<silent><Left> 	:bp<CR>

"cscope map"
nmap 	<C-[>s 		:cs find s <C-R>=expand("<cword>")<CR><CR>
nmap 	<C-[>g 		:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap 	<C-[>c 		:cs find c <C-R>=expand("<cword>")<CR><CR>
nmap 	<C-[>t 		:cs find t <C-R>=expand("<cword>")<CR><CR>
nmap 	<C-[>e 		:cs find e <C-R>=expand("<cword>")<CR><CR>
nmap 	<C-[>f 		:cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap 	<C-[>i 		:cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap 	<C-[>d 		:cs find d <C-R>=expand("<cword>")<CR><CR>
"nmap	<C-_>		:cstag <C-R>=expand("<cword>")<CR><CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch  	"hightlight seach
set incsearch	
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
"set textwidth=80
set nobackup

set textwidth=80
"set formatoptions=tcroql

set autoindent
set cindent
set smartindent
set mouse=a
colorscheme default
"set statusline=%f%m%r%h%w\ [ENCODE=%{&enc}]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]
set statusline=%f%m%r%h%w\ [%{&enc}][%{&ff}][POS=%l,%v][%p%%]
set laststatus=2
set nu

""只编辑GBK编码的文件
"set fileencodings=cp936
"set fileencoding=cp936
"set encoding=cp936
""只编辑UTF-8编码的中文文件
"set fileencodings=utf-8
"set fileencoding=utf-8
"set encding=cp936或者set encoding=utf-8

"同时支持GBK和UTF-8编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,gb2312,latin-1
set fileencoding=utf-8
"set fileencoding=gb2312
set encoding=utf-8
set termencoding=utf-8
"或者set encoding=cp936 set termencoding=cp936

"********************DoxgenToolKit****************************
let g:DoxygenToolkit_authorName="retton"
let g:DoxygenToolkit_versionString="V1.0.0"
let g:DoxygenToolkit_compactDoc="yes"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimgdb
"run macros/gdb_mappings.vim

"set fold method
"set fdm=indent

"*********************Vundle**********************************
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let vundle manage vundle
Bundle 'gmarik/vundle'

"vim-scripts repos
"Bundle 'vim-plugin-foo'
"Bundle 'vim-plugin-bar'
Bundle 'EditPlus'
Bundle 'Mark'
Bundle 'grep.vim'

filetype plugin indent on
"************************************************************

"*****************grep.vim***********************************
let Grep_Default_Filelist = '*.[chS]'
let Grep_Default_Filelist = '*.c *.cpp *.asm *.h *.cc *.hpp'

let Grep_Skip_Files = '*.bak *~'
"************************************************************

"************************************************************
"Remember Last cursor in
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") < line("$") | exe "normal! g'\"" | endif
endif
"************************************************************
