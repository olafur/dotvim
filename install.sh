#!/usr/bin/env sh

create_symlinks () {
    if [ ! -f ~/.vim ]; then
	ln -sfn ~/dotvim/ ~/.vim
    fi

    if [ ! -f ~/.vimrc ]; then
        ln -sfn ~/dotvim/vimrc ~/.vimrc
    fi
}

create_symlinks

if [ ! -d "bundle" ]; then
    echo "Creating bundle directory"
    mkdir bundle
fi

if [ ! -d "bundle/vundle" ]; then
    echo "Installing vundle"
    git clone https://github.com/gmarik/vundle.git bundle/vundle
fi


vim +BundleInstall +qall

