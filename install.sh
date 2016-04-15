echo 'set runtimepath+=~/.vimfiles

source ~/.vimfiles/vimrcs/basic.vim
source ~/.vimfiles/vimrcs/filetypes.vim
source ~/.vimfiles/vimrcs/plugins_config.vim
source ~/.vimfiles/vimrcs/extended.vim

try
source ~/.vimfiles/custom.vim
catch
endtry' > ~/.vimrc

echo "Installed successfully! Enjoy :-)"
