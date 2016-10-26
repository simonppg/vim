# vim
## Instalación en Linux:

```shell
$ git clone git@github.com:simonppg/vim.git ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

## Configuraciones por plugin
### tagbar

Necesitas tener instalado `exuberant-ctags`

```shell
$ sudo apt-get install exuberant-ctags
```
### cscope

Instala cscope con este comando:

```shell
$ sudo apt-get install cscope
```

Debes crear una base de datos en el directorio raiz del proyecto, ´cscope -R´, para salir de la interfaz usa CTRL-D, para evitar la interfaz de cscope agrega la bandera ´-b´. Siempre debes iniciar vim desde el directorio raiz del proyecto.
