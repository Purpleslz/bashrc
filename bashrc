# bash profile
# [ -r ~/.bashrc ] && source ~/.bashrc

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# define colors
RED="\e[31;m"
GREEN="\e[32;m"
YELLOW="\e[33;m"
BLUE="\e[34;m"
PURPLE="\e[35;m"
CYAN="\e[36;m"
WHITE="\e[37;m"

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
export PS1="\[$YELLOW\][\u@\h]\[$RED\]\$(git_branch) \[$GREEN\]\w \[$WHITE\]\$ \[\e[0m\]"
