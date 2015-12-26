call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
syntax on
command! Status echo "All systems are go!"

if has("autoload")
	filetype plugin indent on
endif

"vim-instant-markdown
filetype plugin on

"Configuración del editor
  set colorcolumn=80
  "Colapsa funciones
  set foldmethod=indent "syntax
  set foldlevel=0
"vim-airline
  set laststatus=2
