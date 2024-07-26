# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# If is MacOS
if [[ $OSTYPE == 'darwin'* ]]; then
	# Add homebrew to path
	export PATH=$PATH:/opt/homebrew/bin 
	#Add mysql to PATH
	export PATH=${PATH}:/usr/local/mysql/bin
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ZSH_THEME="bira"

# SETUP BARE DOTFILES REPO
alias config="/usr/bin/git --git-dir=/$HOME/.dotfiles/ --work-tree=$HOME"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# PLUGINS SETUP
# If is MacOS
if [[ $OSTYPE == 'darwin'* ]]; then
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# FZF SETUP
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

# SOURCE MY ALIASES
source $HOME/.aliases

# REMAP SUGGESTION ACCEPT
bindkey '^y' end-of-line

# Load Angular CLI autocompletion.
source <(ng completion script)
