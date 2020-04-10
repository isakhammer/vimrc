
NOW=$(date +"%m-%d-%y-%T")
echo "Making backup of your ~/.bashrc at: ~/.bashrc_backup_"$NOW
cp ~/.bashrc ~/.bashrc_backup_$NOW
sed -i "/.vim_runtime/d" ~/.bashrc

cd ~
rm -Rf ~/.vim_runtime
git clone --depth=1 https://github.com/isakhammer/vimrc.git ~/.vim_runtime
source ~/.vim_runtime/install/install_awesome_setup.sh
