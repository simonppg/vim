call plug#begin()

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!']  }

Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'takac/vim-hardtime'
Plug 'mhinz/vim-signify'
"Plug 'vim-scripts/Conque-GDB'
Plug 'flazz/vim-colorschemes'

"Javascript
Plug 'honza/vim-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
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

" Vim utils
Plug 'mhinz/vim-startify'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'yuttie/comfortable-motion.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'

call plug#end()
