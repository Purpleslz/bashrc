# bash profile
# [ -r ~/.bashrc ] && source ~/.bashrc

# iterm2 Color Presets: Hybrid 
# iterm2 Font: Hack 12pt

# some ls aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# define colors
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
PURPLE="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"

# function to get branch
function git_branch {
	branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
	if [ "${branch}" != "" ];then
		if [ "${branch}" = "(no branch)" ];then
			branch="(`git rev-parse --short HEAD`...)"
		fi
		echo " →$branch"
	fi
}

# PS1
export TERM="screen-256color"
export PS1="\[$YELLOW\][\u@\h]\[$RED\]\$(git_branch) \[$GREEN\]\w \[$WHITE\]\$ \[\e[0m\]"

#duotai proxy
source ~/.duotai_proxy
