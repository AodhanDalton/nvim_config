Clone packer to local repo:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Create config repo:
```
mkdir ~/.config
mkdir ~/.config/nvim
```
clone repo to config directory

Run:
```
nvim .
:PackerSync
```
