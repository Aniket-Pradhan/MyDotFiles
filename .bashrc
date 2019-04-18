#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias sl='lsp'
alias chrome='chromium'
alias x='startx'
alias sleep='systemctl suspend'
alias boom='systemctl poweroff'
alias iiit='sudo netctl start IIIT'
alias home='sudo netctl start Home'
alias iiitStop='sudo netctl stop IIIT'
alias homeStop='sudo netctl stop Home'
alias gitstore='git config credential.helper store'
alias netStart='sudo systemctl start NetworkManager.service'
alias forti='~/.forti'
alias startenv='source ./venv/bin/activate'
alias lock='~/.i3/lock'


#source /opt/Xilinx/Vivado/2018.2/settings64.sh
#LD_LIBRARY_PATH=/usr/bin/chromium

PYCHARM='/home/major/Apps/pycharm-2018.2.1/bin/'
CONDAPATH='/opt/miniconda3/bin'
GOPATH="$HOME/go"
GOROOT="/usr/lib/go"
CGO_ENABLED=1
XDG_DATA_HOME="$HOME/.local/share"
RUBYPATH="$HOME/.gem/ruby/2.6.0/bin"
WINEARCH=win32

PATH=$PATH:$PYCHARM:$GOPATH:$GOPATH/bin:$CONDAPATH:$RUBYPATH

PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\] "
#PS1=">\[$(tput sgr0)\]"

XILINXD_LICENSE_FILE=2100@192.168.1.70
EDITOR="vim"

LANG=en_US.UTF-8
LC_CTYPE=en_US.UTF-8
XDG_CONFIG_HOME=~/.config

. /opt/miniconda3/etc/profile.d/conda.sh

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
