#!/bin/bash

 function install_plugin()  {
    cd ~/.vim_runtime/my_plugins
    ssh_key=$1

    # Get name from ssh key
    echo "$ssh_key">tmp_ssh_key.txt
    vim -s ~/.vim_runtime/custom/get_ssh_name.txt tmp_ssh_key.txt
    read -r ssh_name<tmp_ssh_key.txt
    rm -Rf tmp_ssh_key.txt

    # clone plugin
    git clone $ssh_key $ssh_name
 }

 function execute_cmd_in_background()  {
     array="${@}"
     eval $array 1> /dev/null &
 }

 function kill_running_cmds() {
     for i in $(jobs -pr); do kill -9 $i; done;
 }

# Welcome text
cowsay Get started $(whoami)

# Starting vim mode in terminal
set -o vi

# Alias for editing personal vim configs
alias myvim="vim ~/.vim_runtime/custom/my_vim_configs.vim"

# Alias for editing personal bash configs
alias mysh="vim ~/.vim_runtime/custom/my_bash_configs.sh"

# Alias for editing programs installation.
alias myprgms="vim ~/.vim_runtime/install/install_programs.sh"

# Alias for editing bashrc
alias shrc="vim ~/.bashrc"

# Alias for cleaning terminal.
alias c="clear"

# Alias for sourcing bashrc
alias s="source ~/.bashrc"

# Alias for executing in background
alias ex="execute_cmd_in_background"

# Kill running cmnds
alias kex="kill_running_cmds; echo jobs"

# Alias to access vim_runtime quick
alias rt="cd ~/.vim_runtime/"

# rdv aliases
alias cm="cd ~/catkin_rdv && catkin_make; cd -"

# Pdf manager
alias oku="okular"

# Lightweight pdf viewer
alias zat="zathura"

# Open google chrome
alias chrome="chromium-browser"

# Personal aliases
alias research="cd ~/Documents/research"

