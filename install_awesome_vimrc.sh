#!/bin/sh
set -e

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


echo "Making backup of your ~/.bashrc at: ~/.bashrc_backup_"$NOW
cp ~/.bashrc ~/.bashrc_backup_$NOW
echo "Writing into your ~/.bashrc."
echo "Starts writing"
sleep 0.5
echo "====="
echo ""
echo 'source ~/.vim_runtime/custom/my_bash_configs.sh' |& tee -a ~/.bashrc
echo ""
echo "====="
sleep 0.5
echo "Finished writing"

echo "Installed the Ultimate Isak Vim configuration successfully! Enjoy :-)"
