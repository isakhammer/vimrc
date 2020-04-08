#!/bin/bash

# function execute_cmd_in_background()  {
#     array="${@}"
#     eval $array 1> /dev/null &
# }

# function kill_running_cmds() {
#     for i in $(jobs -pr); do kill -9 $i; done;
# }

# Welcome text
cowsay Get started $(whoami)

# Starting vim mode in terminal
set -o vi

# Alias for editing custom bashrc
alias mysh="vim ~/.vim_runtime/custom/my_bash_configs.sh"

# Alias for executing in background
alias ex="execute_cmd_in_background"

# Kill running cmnds
alias kex="kill_running_cmds; echo jobs"

# Alias to access vim_runtime quick
alias rt="cd ~/.vim_runtime/"
