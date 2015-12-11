# vim
## Instalación:

    git clone git://github.com/nelstrom/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Instalación de un nuevo plugin

    git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
    git commit -m 'instalando fugitive'	

## Plugins
- code_complete
- nerdtree
- tagbar
- YouCompleteMe
