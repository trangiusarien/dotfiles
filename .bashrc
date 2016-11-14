#########################################################################
# SHOPTS
#########################################################################
shopt -s autocd 					# cd to a dir just by typing its name
shopt -s cdspell                    # autocorrects cd misspellings
shopt -s checkwinsize               # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist                    # save multi-line commands in history as single line
shopt -s dotglob                    # include dotfiles in pathname expansion
shopt -s expand_aliases             # expand aliases
shopt -s extglob                    # enable extended pattern-matching features
shopt -s nocaseglob                 # pathname expansion will be treated as case-insensitive
shopt -s histappend                 # Append History instead of overwriting file.
shopt -s no_empty_cmd_completion    # No empty completion


#########################################################################
# LOOK AND FEEL
#########################################################################
# always do 'ls' after entering new directory
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD' 
#PS1 look
export PS1="\u@\h\[$(tput sgr0)\]\[\033[38;5;222m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]>\[$(tput sgr0)\]"

# Use vi-mode:
set -o vi
e


#########################################################################
# ALIASES
#########################################################################
# Edit files in the same vim using urxvt:
function runvim() {
	(urxvt -title "VIM" -e vim --servername VIM --remote-tab-silent $@ && i3-msg "[title=VIM]" >&- 1>&- 2>&- &)
} 
alias e=runvim
alias um="sudo umount"
alias cpr="rsync -ah --progress $@"
alias rl="source /home/krister/.bashrc"
alias r="rar a -r $@"
alias ur="unrar x $@"
alias recursive_chmod_x="sudo chmod -R -x * && sudo chmod -R +X *" # works in OS X
alias queen="ssh krister@5.150.254.115"
alias queentunnel="ssh -L 9999:localhost:8384 5.150.254.115"
alias inst="sudo apt-get install $@"
alias wcon="wicd-curses"
alias gitul="git remote add origin https://github.com/trangiusarien/home.git && git push -u origin master"
alias spacereplace_="find . -depth -name \"* *\" -execdir rename 's/ /_/g' \"{}\" \;"
#########################################################################
# PATHS
#########################################################################
PATH="$PATH:$HOME/.bin"

# Cli Colors
export CLICOLOR=1
# use yellow for dir’s
export LSCOLORS=dxfxcxdxbxegedabagacad

