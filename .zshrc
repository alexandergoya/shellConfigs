
ssh-add
source /Users/alexandergoya/Projects/docker-dev/.docker_env
export PATH=$PATH:~/Projects/docker-dev/bin:~/bin


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
# # ZSH_THEME="refined"
# ZSH_THEME="agnoster"
# # ZSH_THEME="robbyrussell"
# zstyle ':omz:update' mode auto
# ## 1password cli
# eval "$(op completion zsh)"; compdef _op op


# alias composer='docker run --rm -it -v $(pwd):/app -v ~/.composer:/root/.composer -v ~/.ssh/known_hosts:/root/.ssh/known_hosts \
# --mount type=bind,src=/run/host-services/ssh-auth.sock,target=/run/host-services/ssh-auth.sock -e  SSH_AUTH_SOCK="/run/host-services/ssh-auth.sock" -e PHP_MEMORY_LIMIT=-1 -w /app webdevops/php:$(find_php_rc) composer'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

## oh-my-zsh
# source $HOME/.dotfiles/.zshrc.OMzsh
# plugins=(
#   aliases
#   docker-compose
#   colored-man-pages
#   common-aliases
#   git
#   dotenv
#   macos
# )



# Prefer Homebrew executables in the Path
export PATH="$(brew --prefix)/bin:$PATH"

# Setup tab-autocompletion for Git commands:


# # PHP 5.6 - for building with extensions:
# export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# Setup tab-autocompletion for npm commands:


# complete -C /opt/homebrew/bin/terraform terraform#added by docker-dev/bin/mac_setup.sh
# PHP 8.1 - for building with extensions:
export PATH=$(brew --prefix)/homebrew/opt/php@8.1/bin:$PATH
# docker-dev completion
export PATH=$PATH:$HOME/bin:$HOME/Projects/docker-dev/bin
# docker-dev env
source $HOME/Projects/docker-dev/.docker_env
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Created by `pipx` on 2024-04-10 20:28:13
export PATH="$PATH:/Users/alexandergoya/.local/bin"

## starship
eval "$(starship init zsh)"

## zsh plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
