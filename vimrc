call plug#begin()
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-scripts/Conque-GDB'
    Plug 'flazz/vim-colorschemes'
    Plug 'pangloss/vim-javascript', {'for': 'javascript'}
    Plug 'mxw/vim-jsx', {'for': 'javascript'}
    Plug 'alvan/vim-closetag'
    Plug 'altercation/vim-colors-solarized'
    Plug 'jwalton512/vim-blade', {'for': 'php'}
    Plug 'majutsushi/tagbar'
    Plug 'kien/ctrlp.vim'
    Plug 'w0rp/ale'
    Plug 'tpope/vim-fugitive'
    Plug 'StanAngeloff/php.vim'
    Plug 'luochen1990/rainbow'
    Plug 'nathanaelkane/vim-indent-guides'
    "Laravel
    Plug 'tpope/vim-dispatch'             "| Optional
    Plug 'tpope/vim-projectionist'        "|
    Plug 'noahfrederick/vim-composer'     "|
    Plug 'noahfrederick/vim-laravel'
    "Typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vue
    Plug 'leafOfTree/vim-vue-plugin'
    Plug 'vim-airline/vim-airline'
    "Start screen
    Plug 'mhinz/vim-startify'
    Plug 'tomtom/tcomment_vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()
filetype plugin indent on

set paste

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
set path+=**
" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore+=*.o,*~
if has('win32unix')
  set wildignore+=.git\*
elseif has("unix")
  set wildignore+=*/.git/*
  set wildignore+=*.out
  set wildignore+=*/node_modules/*
  set wildignore+=*/dist/*
  set wildignore+=*/coverage/*
  set wildignore+=*/.vscode/*
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden

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

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
"set timeoutlen=500

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
    colorscheme deepsea
catch
    colorscheme desert
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set fileformats=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowritebackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent relate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set linebreak
set textwidth=500

set autoindent
set smartindent
set wrap

" Uncategorized config
set number
"set list
set listchars=tab:▸\ ,eol:¬,space:·
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" My snipets
nnoremap ,html :-1read $HOME/.vim/snippets/skeleto.html<CR>3jwf>a

:map <F2> <ESC>oHola<ESC>jk

function! EchoTest()
    echo "this is a test"
endfunction

