# vim
## Instalación:

```shell
$ git clone git://github.com/nelstrom/dotvim.git ~/.vim
```

Create symlinks:

```shell
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
```

Switch to the `~/.vim` directory, and fetch submodules:

```shell
cd ~/.vim
git submodule init
git submodule update
```

Instalación de un nuevo plugin
```shell
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
git commit -m 'instalando fugitive'	
```

## Configuraciones por plugin
### vim-instant-markdown

Permite editar archivos markdown en vim y ver en el navegador los cambior sin
tener que recargar la pagina.

```shell
$ sudo npm -g install instant-markdown-d
$ sudo apt-get install xdg-utils
habilitar 'filetype plugin on' en .vimrc
```
