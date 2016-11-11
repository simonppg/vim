# vim
## Install in Linux

```shell
$ git clone git@github.com:simonppg/vim.git ~/.vim
$ ln -s ~/.vim/vimrc ~/.vimrc
```

## Configurations by plugin
### tagbar

Need to install `exuberant-ctags`.

```shell
$ sudo apt-get install exuberant-ctags
```
### cscope

Need to install `cscope`.

```shell
$ sudo apt-get install cscope
```

You need to create a data base in the root directory of the project running `cscope -R` at the end the cscope will display a CLI where you can search C symbols, press `CTRL-D` to quit from the CLI, if you want to skip the CIL and just create the data base use the flag `-b`.

NOTE: To use cscope plugin from vim, vim need to open from the root directory.
