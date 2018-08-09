#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
color() {
	for i in {35..39} {39..35} ; do echo -en "\e[38;5;${i}m\$PWD]\e[0m" ;
	done;
	echo
}

# for hippie theme
# PS1="\e[38;5;85m[\u\e[38;5;223m@\e[38;5;87m\H \e[38;5;211m\W]\e[38;5;184m\$ \e[38;5;230m"

# brown theme
PS1="\e[38;5;38m[\u\e[38;5;228m@\e[38;5;230m\H \e[38;5;85m\W\e[38;5;223m]\$ \e[38;5;223m"

PATH=$PATH:/etc/php71
export PATH
