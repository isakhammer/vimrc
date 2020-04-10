#!/bin/sh

source ~/.vim_runtime/install/install_programs.sh

echo "Making backup of your ~/.bashrc at: ~/.bashrc_backup_"$NOW
cp ~/.bashrc ~/.bashrc_backup_$NOW
echo "Writing into your ~/.bashrc."
echo "Starts writing"
sleep 0.5
echo "====="
echo "" |& tee -a ~/.bashrc
echo 'source ~/.vim_runtime/custom/my_bash_configs.sh' |& tee -a ~/.bashrc
echo "" |& tee -a ~/.bashrc
echo "====="
sleep 0.5
echo "Finished writing"

echo "Installed the Ultimate Isak Bash configuration successfully! Enjoy :-)"
source ~/.bashrc
