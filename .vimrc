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
let Tlist_WinWidth=30
let Tlist_Use_Horiz_Window=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"***** winmanager option entry *******************************************
let g:winManagerWidth=20
let g:winManagerWindowLayout='FileExplorer'

"**** minibufexpl********
let g:miniBufExplorerMoreThanOne=1000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"***** key map entry *****************************************************
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','
map 	<silent><F5> 	:TlistToggle<CR>
nmap 	<silent><F6> 	:WMToggle<CR>
"nmap 	<silent><F7> 	:make<CR><CR>:cw<CR>
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

set autoindent
set cindent
set smartindent
set nu!

set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"使用配色方案
"source $VIMRUNTIME/adam.vim
colorscheme default
"hi Comment cterm=NONE ctermfg=DarkGray
"colorscheme retton
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set statusline=%f%m%r%h%w\ [ENCODE=%{&enc}]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]
set statusline=%f%m%r%h%w\ [%{&enc}][%{&ff}][POS=%l,%v][%p%%]
set laststatus=2

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
set encoding=utf-8
set termencoding=utf-8
"或者set encoding=cp936 set termencoding=cp936

"DoxgenToolKit
let g:DoxygenToolkit_authorName="Retton"
let g:DoxygenToolkit_versionString="V1.0"

"srcexpl.vim
nmap <F8> :SrcExplToggle<CR>
let g:SrcExpl_winHeight=10
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"

"vimgdb
run macros/gdb_mappings.vim
