source $HOME/.vim/plugins.vim

let mapleader = "\<space>"

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <loalleader> :<c-u>WhichKey ','<CR>

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

set nowrap

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Highlight text after 80 characters
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#111111
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END
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
    colorscheme PaperColor
catch
    colorscheme desert
endtry

set background=dark
" Remove background color definition to have transparency
highlight Normal ctermbg=NONE

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

" Use hybrid line numbers
set number relativenumber
set cursorline

"set list
set listchars=tab:▸\ ,eol:¬,space:·
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

set diffopt+=vertical

function! EchoTest()
    echo "this is a test"
endfunction

function! TestThis()
  !export NODE_ENV=test && clear && npx mocha -r 'ts-node/register' % --exit
endfunction

function! BuildThis()
  !clear && npm run build
endfunction

command! BufOnly silent! execute "%bd|e#|bd#"

autocmd BufRead /tmp/psql.edit.* set syntax=sql

source $HOME/.vim/keys/maps.vim
