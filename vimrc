set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'airblade/vim-gitgutter'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'vim-scripts/Conque-GDB'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'pangloss/vim-javascript'
	Plugin 'mxw/vim-jsx'
	Plugin 'scrooloose/nerdtree'
	Plugin 'alvan/vim-closetag'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'jwalton512/vim-blade'
	Plugin 'majutsushi/tagbar'
call vundle#end()            " required
filetype plugin indent on    " required|

"Mis configuraciones
	"set number
	syntax on
	"set list
	set listchars=tab:▸\ ,eol:¬
	set hlsearch
	set scrolloff=5

"vim-gitgutter
	set updatetime=250

"powerline
	set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
	" Use 256 colours (Use this setting only if your terminal supports 256 colours)
	set t_Co=256

"vim-airline
	set laststatus=2 " Always display the statusline in all windows
	set showtabline=2 " Always display the tabline, even if there is only one tab
	set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
	if !exists('g:airlinesymbols')
		let g:airlinesymbols = {}
	endif
	let g:airline_theme='wombat'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#fnamemod = ':t'
	" unicode symbols
	let g:airline_left_sep = '»'
	let g:airline_left_sep = '▶'
	let g:airline_right_sep = '«'
	let g:airline_right_sep = '◀'

	set background=dark
	colorscheme matrix
