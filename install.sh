#!/bin/sh
# commands taken from: https://vi.stackexchange.com/questions/13564/why-is-vim-for-debian-compiled-without-clipboard/13575#13575

# Get the compile-dependencies of vim
sudo apt-get -y build-dep vim
# Install the "checkinstall" tool so the "make install" step is
# wrapped and the result is a .deb file that can be removed later by
# your package manager rather than having to hunt down every file deployed
# by "make install", which might not be possible if it overwrites existing
# system files.
sudo apt-get -y install checkinstall
# Install python dev
sudo apt-get -y install python-dev
# Install xorg dev
sudo apt-get -y install xorg-dev
# Install git
sudo apt-get -y install git
# Get the source
git clone https://github.com/vim/vim.git vim_source
# Remove ./configure cache in case we have to run this twice due to permissions
# related issues.
rm vim_source/src/auto/config.cache
# Compile it
cd vim_source
make clean
./configure \
    --enable-perlinterp=dynamic \
    --enable-pythoninterp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=normal \
    --with-x \
    --with-compiledby="DevNull <darkstar@/dev/null>" \
    --with-python-config-dir=/usr/lib/python2.7/config-$(uname -m)-linux-gnu
# Build quickly (8 parallel jobs, hope your system doesn't get overwhelmed)
make #-j8
# Need root to install
sudo checkinstall
