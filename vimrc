""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"   -> Plugins setup
"   -> General
"   -> VIM user interface
"   -> Colors and Fonts
"   ->Files, backups and undo
"   ->Text, tab and indent relate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be iMproved, required
set nocompatible

" Required for the use of Vundle.vim
filetype off
" only for cygwin
if has('win32unix')
    set rtp+=/cygdrive/c/Users/$USER/vimfiles/bundle/Vundle.vim
    " only for linux
elseif has('unix') || has('mac')
    set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()
    Plugin 'airblade/vim-gitgutter'
    Plugin 'vim-scripts/Conque-GDB'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'alvan/vim-closetag'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'jwalton512/vim-blade'
    Plugin 'majutsushi/tagbar'
call vundle#end()
" Enable filetype plugins and indent both are required for the use of Vundle.vim
filetype plugin indent on

" vim-gitgutter configuration
set updatetime=250

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

set path+=**
" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore+=*.o,*~
if has('win32unix')
    set wildignore+=.git\*,.hg\*,.svn\*
elseif has("unix")
    set wildignore+=*/.git/*,*.out
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent relate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Uncategorized config
set number
"set list
set listchars=tab:▸\ ,eol:¬
set hlsearch

" My snipets
nnoremap ,html :-1read $HOME/.vim/snippets/skeleto.html<CR>3jwf>a
