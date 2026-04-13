#!/bin/bash

echo this script packs all your neovim plugins into a single .zip file, so that you can deploy nvim on a machine without internet access
zip -r nvim_plugins.zip ~/.local/share/nvim

