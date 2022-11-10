# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

ssh-add
source /Users/alexandergoya/Projects/docker-dev/.docker_env
export PATH=$PATH:~/Projects/docker-dev/bin:~/bin
source ~/Projects/docker-dev/nginx-srv/scripts/commands
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"


alias composer='docker run --rm -it -v $(pwd):/app -v ~/.composer:/root/.composer -v ~/.ssh/known_hosts:/root/.ssh/known_hosts \
--mount type=bind,src=/run/host-services/ssh-auth.sock,target=/run/host-services/ssh-auth.sock -e  SSH_AUTH_SOCK="/run/host-services/ssh-auth.sock" -e PHP_MEMORY_LIMIT=-1 -w /app webdevops/php:$(find_php_rc) composer'

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


# quickly editing host files
alias hostsedit='sudo code /etc/hosts'
alias hostsflush='sudo killall -HUP mDNSResponder; echo DNS Cache Reset'

function cheat() {curl https://cheat.sh/$1 ;}

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

## zsh plugins
plugins=(
  aliases
  docker-compose
  colored-man-pages
  common-aliases
  git
  dotenv
)