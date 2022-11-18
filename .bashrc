# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias vi="vim"


# Customize the bash prompt. Use colors if tty supports it.                                                        
if tty -s ; then
  BLACK="\[$(tput setaf 0)\]"
  RED="\[$(tput setaf 1)\]"
  GREEN="\[$(tput setaf 2)\]"
  YELLOW="\[$(tput setaf 3)\]"
  BLUE="\[$(tput setaf 4)\]"
  MAGENTA="\[$(tput setaf 5)\]"
  CYAN="\[$(tput setaf 6)\]"
  WHITE="\[$(tput setaf 7)\]"
  RESET="\[$(tput sgr0)\]"
fi

	parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }
	parse_tf_branch() {
     terraform workspace list 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }


  export PS1="#================================================\n[${MAGENTA}\u${RESET}@${YELLOW}\h] ${GREEN}\w ${CYAN}\$(parse_git_branch) ${RED}\$(parse_tf_branch)${RESET}\n\$ "        
  export PS2="  > "

