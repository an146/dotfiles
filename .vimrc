set nocompatible
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode

set nowrap
set linebreak

set visualbell

"statusline setup
set statusline=%f       "tail of the filename

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%*

set statusline+=%#warningmsg#
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

set guioptions+=p
set guioptions-=T
set guifont=DejaVu\ Sans\ Mono\ 14
set guiheadroom=0
set lazyredraw

set encoding=utf-8
set fileencodings=utf-8,cp1251
set nobomb
set ffs=unix,dos

if has('gui_running')
	"colorscheme ir_black
	colorscheme peachpuff
else
	colorscheme desert
endif

filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
