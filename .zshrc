
ssh-add


PROMPT_COMMAND="${PROMPT_COMMAND%;[ *]}; history -a; history -n"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
setopt APPEND_HISTORY

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=9000
HISTFILESIZE=18000

# Alias

## aws
alias start-stig='aws ec2 start-instances --instance-ids i-074cc5de575737b67 --profile=govcloud'
## quickly editing host files
alias hostsedit='sudo code /etc/hosts'
alias hostsflush='sudo killall -HUP mDNSResponder; echo DNS Cache Reset'

alias python='python3'
alias py='python3'
alias killdocker='docker rm -f $(docker ps -q)'
## docker
alias containerdown='docker rm -f $(docker ps -qa)'
function cheat() {curl https://cheat.sh/$1 ;}

# Prefer Homebrew executables in the Path
export PATH="$(brew --prefix)/bin:$PATH"

## starship
eval "$(starship init zsh)"

## zsh plugins
source $(brew --prefix)/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
