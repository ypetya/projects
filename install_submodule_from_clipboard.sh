#!/bin/bash

# This small bash script can install a git repo as a submodule
# the only thing you have to do is select the repo url on bitbucket or github
# and start the script.

# require is a function defined in my .bash_ex file
# it will install missing ubuntu packages
require 'xclip'

# selects the clipboard's content
GIT_REPO=$(xclip -sel clip -o)
# returns the end of the repo url
DIR=${GIT_REPO##*/}

if [ ! -d $DIR ] ; then
  # cuts the "git clone " String from the beginning
  git submodule add ${GIT_REPO#git clone } $DIR
fi

