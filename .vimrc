set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'bufexplorer.zip'
Bundle 'taglist-plus'
Bundle 'winmanager'
Bundle 'minibufexpl.vim'

Bundle 'lastpos.vim'
"Bundle 'DoxygenToolkit.vim'
"Bundle 'STL-improved'

filetype plugin indent on

set encoding=utf-8
set nu!	" show line number
set ruler " show current cursor position
set shiftwidth=8 " default shift width for indent
set tabstop=8	" default tabstop for 8 spaces
set softtabstop=8
set expandtab	" make tabs into spaces
set smarttab

set textwidth=80	" set line width to 80 chars
set nobackup

set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

set autoindent
set smartindent
set completeopt=longest,menu

set history=1000
set foldmethod=syntax
set foldlevel=100
set scrolloff=5
set autochdir

colorscheme evening

" taglist setting
map <F12> :silent! Tlist<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" buffer explorer setting
let g:bufExplorerDefaultHelp=0          " Do not show default help
let g:bufExplorerShowRelativePath=1     " Show relative paths
let g:bufExplorerSortBy='mru'           " Sort by most recently used
let g:bufExplorerSplitRight=1           " Split left
let g:bufExplorerSplitVertical=1        " Split vertically
let g:bufExplorerSplitVertSize=100      " Split width
let g:bufExplorerUseCurrentWindow=1     " Open in the new window

" win manager setting
let g:winManagerWindowLayout="FileExplorer|TagList"
let g:winManagerWidth=30
let g:defaultExplorer=0
nmap <C-W><C-F> :FirstExplorerWindow<CR>
nmap <C-W><C-B> :BottomExplorerWindow<CR>
nmap <silent> wm :WMToggle<CR>
nmap wm :WMToggle<CR>

" mini buffer explorer setting
let g:miniBufExplMapWindowNavVim=1

map <C-s> :w<CR> " save as windows do

" fuzzyfind setting
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" ctags and cscope setting
if has("cscope") && executable("cscope")
	set csto=1
	set cst
	set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

" doxygen setting
map fg : Dox<CR>
let g:DoxygenToolkit_authorName="bedford <bedford2001@gmail.com>"
let s:licenseTag="\<enter>@verbatim\<enter>"
let s:licenseTag=s:licenseTag."============================================================================\<enter>"
let s:licenseTag=s:licenseTag."============================================================================\<enter>"
let s:licenseTag=s:licenseTag."\<enter>@endverbatim\<enter>"
let g:DoxygenToolkit_licenseTag=s:licenseTag
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre="@brief\t"
let g:DoxygenToolkit_paramTag_pre="@param\t"
let g:DoxygenToolkit_returnTag="@return\t"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_maxFunctionProtoLines="30"

" setting for python
if has('autocmd')
	autocmd FileType python setl autoindent
	autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
	autocmd FileType python setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
endif

" setting for c
"if has('autocmd')
"autocmd FileType c setl smartindent cinwords=if,else if,else,for,while
"autocmd FileTYpe c setl tabstop=4 shiftwidth=4 softtabstop=4
"endif

