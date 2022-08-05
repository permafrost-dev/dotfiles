#!/bin/bash

THISDIR=$(dirname $0)

mkdir -p $HOME/development/images/logos
mkdir -p $HOME/.local/share/applications

echo "Installing menu icons..."
cp -r $THISDIR/logos/* $HOME/development/images/logos/

echo "Installing menu entries..."
cp -r $THISDIR/menus/*.desktop $HOME/.local/share/applications/

echo "Done."