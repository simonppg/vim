# vim
## Instalación:

```shell
$ git clone git@github.com:simonppg/vim.git ~/.vim
```

Create symlinks:

```shell
$ ln -s ~/.vim/vimrc ~/.vimrc
$ ln -s ~/.vim/gvimrc ~/.gvimrc
$ ln -s ~/.vim/config/c.comments.template ~/.vim/bundle/vim-plugins/c-support/templates/c.comments.template
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
### tagbar

Necesitas tener instalado `exuberant-ctags`

```shell
$ sudo apt-get install exuberant-ctags
```

