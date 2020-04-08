#!/bin/sh
set -e

cd ~/.vim_runtime
NOW=$(date +"%m-%d-%y-%T")
VIMRC_BACKUP="~/.vimrc_backup_"$NOW
echo "Making backup of your ~/.vimrc at: ~/.vimrc_backup_"$NOW
cp ~/.vimrc ~/.vimrc_backup_$NOW

echo "Writing into your ~/.vimrc."
echo "Starting writing"
sleep 0.5
echo "====="
echo ""
echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' |& tee -a ~/.vimrc

echo ""
echo "====="
sleep 0.5
echo "Finished writing"

echo "Installed the Ultimate Isak Vim configuration successfully! Enjoy :-)"
