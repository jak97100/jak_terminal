Rashid's terminal settings:

includes:
	- tmux
	- nvim config
	- rashidrc
	- scripts for terminal colors/PS1 changes

steps:
1. install packer.nvim:

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim)

2. Copy over nvim folder to ~/.config/nvim directory

3. remove the "after" folder for now, go to packer.lua file and perform :so

4. :PackerSync to install all packages

5. quit nvim, copy back the after folder and voila!
