#!/bin/bash

# Update pathogen submodule
cd vim-pathogen
echo "updating pathogen."
git pull
cd ..

# Install pathogen
mkdir -p .vim .vim/autoload .vim/bundle
cp $PWD/vim-pathogen/autoload/pathogen.vim $PWD/.vim/autoload
echo "copied pathogen.vim."

# Update darcula
cd .vim/bundle/darcula
echo "updating darcula."
git pull
cd ..
