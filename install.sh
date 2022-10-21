#!/bin/bash

# get the os
declare ARCH=$(uname)
# get package manager
declare PM

# check if brew is installed while using macos
if [[ $ARCH == "Darwin" ]] && [[ -x $(which brew) ]]; then
  PM="brew install"
elif [[ $ARCH == "Linux" ]]; then
  # assume Ubuntu
  PM="sudo apt install"
fi

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
echo "Packer setup complete"
