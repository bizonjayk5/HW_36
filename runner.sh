#!/bin/sh

GITHUB=bizonjayk5

WS_DIR=Workspace

REPO=HW_36

VERSION=1.0

# ======================================================================================

if ! which java >/dev/null 2>&1; then echo Java not installed; return; fi

if ! which mvn >/dev/null 2>&1; then echo Maven not installed; return; fi

if ! which git >/dev/null 2>&1; then echo Git not installed; return; fi

if [ -d "$HOME/$WS_DIR" ]; then cd ~/$WS_DIR; else echo $WS_DIR is not exist; return; fi

if [ -d "$HOME/$WS_DIR/$REPO" ]; then rm -rf $HOME/$WS_DIR/$REPO; fi

git clone https://github.com/$GITHUB/$REPO.git

cd $HOME/$WS_DIR/$REPO