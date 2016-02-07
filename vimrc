call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set tabstop=4
syntax on
command! Status echo "All systems are go!"

if has("autoload")
	filetype plugin indent on
endif

set list
set listchars=tab:▸\ ,eol:¬

"vim-instant-markdown
filetype plugin on

"Configuración del editor
	"Resalta texto despues de los 80 caracteres
	highlight OverLength ctermbg=red ctermfg=white guibg=#592929
	match OverLength /\%81v.\+/
	"Colapsa funciones
	set foldmethod=indent "syntax
	set foldlevel=0

"vim-airline
	set laststatus=2

"identLine
	"Vim
	let g:indentLine_color_term = 239
	"GVim
	let g:indentLine_color_gui = '#A4E57E'
	" none X terminal
	let g:indentLine_color_tty_light = 7 " (default: 4)
	let g:indentLine_color_dark = 1 " (default: 2)
"vim-gitgutter
	set updatetime=250
