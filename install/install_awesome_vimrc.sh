#!/bin/sh
set -e
sudo apt install vim
touch ~/.vimrc

cd ~/.vim_runtime
NOW=$(date +"%m-%d-%y-%T")
echo "Making backup of your ~/.vimrc at: ~/.vimrc_backup_"$NOW
cp ~/.vimrc ~/.vimrc_backup_$NOW

echo "Overwriting into your ~/.vimrc."
echo "Starts writing"
sleep 0.5
echo "====="
echo ""
echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/custom/my_vim_configs.vim
catch
endtry' |& tee ~/.vimrc

echo ""
echo "====="
sleep 0.5
echo "Finished writing"
