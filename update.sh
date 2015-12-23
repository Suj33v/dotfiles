#!/bin/bash

BASE_DIR=$PWD

# Update pathogen submodule
cd vim-pathogen
echo "updating pathogen."
git pull
cd $BASE_DIR

# Install pathogen
mkdir -p vim vim/autoload vim/bundle
cp $PWD/vim-pathogen/autoload/pathogen.vim $PWD/vim/autoload
echo "copied pathogen.vim."

# Update darcula
cd vim/bundle/darcula
echo "updating darcula."
git pull
cd $BASE_DIR

# Update nerdcommenter
cd vim/bundle/nerdcommenter
echo "updating nerdcommenter."
git pull
cd $BASE_DIR

# Update syntastic
cd vim/bundle/syntastic
echo "updating syntastic."
git pull
cd $BASE_DIR
