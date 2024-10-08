#
# ~/.bashrc
# Use `source ~/.bashrc` to reload this file
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias chowna='sudo chown -R willow:willow *'

# Cargo
export PATH="$PATH:/home/willow/.cargo/bin"

PS1='[\u@\h \W]\$ '

# Custom function to symlink dotfiles to the config directory
stowd() {
	if [ -z "$1" ]; then
		echo "Usage: stowd <packagename>"
		return 1
	fi

	local packagename="$1"

	stow "$packagename" -d "$HOME/.dotfiles/" -t "$HOME/.config/$packagename"

	ls -l ~/.config/$packagename
}

# To compile c++
# Example input: hello
# clang++ -o hello hello.cpp
cppcompile() {
	clang++ -o "$1" "${1}.cpp"
}

# Starship prompt
eval "$(starship init bash)"

PF_INFO="ascii title os host kernel pkgs" PF_SEP=":" PF_COL1=4 PF_COL3=5 PF_ASCII="Catppuccin" /usr/local/bin/pfetch
. "$HOME/.cargo/env"

# Created by `pipx` on 2024-04-23 10:16:53
export PATH="$PATH:/home/willow/.local/bin"
