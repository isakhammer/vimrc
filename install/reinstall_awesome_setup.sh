
NOW=$(date +"%m-%d-%y-%T")
echo "Making backup of your ~/.bashrc at: ~/.bashrc_backup_"$NOW
cp ~/.bashrc ~/.bashrc_backup_$NOW
vim -s uninstall_bashrc.txt ~/.bashrc

rm -Rf ~/.vim_runtime
source ~/.vim_runtime/install/install_awesome_vimrc.sh
source ~/.vim_runtime/install/install_awesome_bashrc.sh
