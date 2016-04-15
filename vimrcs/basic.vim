filetype plugin on
filetype indent on

"""""""""""""""""""
" control options
"""""""""""""""""""
let mapleader = "\\"
let g:mapleader = "\\"
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

cd ~

"""""""""""General Options"""""""""""""
" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set nobackup
set nowb
set noswapfile

set dir=$TEMP
set encoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""Display Options"""""""""""""
" Set font according to system
if has("mac") || has("macunix")
    set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("linux")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("unix")
    set gfn=Monospace\ 11
endif

syntax enable 
set background=dark
colorscheme slate
set ruler
set number

if has("gui_running")
	"hide menubar and toolbar
	set guioptions-=m guioptions-=T
	" hide scrollbars
	set guioptions-=r guioptions-=R guioptions-=l guioptions-=L
endif

set lines=42 columns=120
"set number				"display line number
set display=uhex,lastline	"show hex and display as many characters as possible
set incsearch
set hlsearch

"fix syntax highlight when scrolled
au BufEnter * :syntax sync fromstart

""""""""""Format Options""""""""""""
set wrap
set expandtab
set tabstop=4
set shiftwidth=4
" allow backspacing over everything in insert mode

set backspace=indent,eol,start
set whichwrap+=<,>,h,l


"""""""""""Macros""""""""""""""
" wrap word inside quotes
:let @q="i'gvoi'"

" Avoid garbled characters in Chinese language windows OS

let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif


" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" always show status line
set laststatus=2
