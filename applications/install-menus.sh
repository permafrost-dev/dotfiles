#!/bin/bash

THISDIR=$(dirname $0)

mkdir -p $HOME/development/images/logos
mkdir -p $HOME/.local/share/applications

echo "Installing menu icons..."
cp -r $THISDIR/logos/* $HOME/development/images/logos/

echo "Installing menu entries..."
cp -r $THISDIR/menus/*.desktop $HOME/.local/share/applications/

# replace placeholder variables with real values
greplace -s '$HOME' -r $(printf $HOME) $HOME/.local/share/applications/*.desktop

echo "Done."