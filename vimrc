set nocompatible              " be iMproved, required
filetype off                  " required

if has('win32unix')		" only for cygwin
elseif has('unix')		" only for linux
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
call vundle#end()            " required
filetype plugin indent on    " required|

" Mis configuraciones
	set number
	syntax on
	"set list
	set listchars=tab:▸\ ,eol:¬
	set hlsearch

" Mis snipets
	nnoremap ,html :-1read $HOME/.vim/snippets/skeleto.html<CR>3jwf>a
	set path+=**
	set wildmenu

"vim-gitgutter
	set updatetime=250
