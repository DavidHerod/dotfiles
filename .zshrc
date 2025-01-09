# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


source /Users/davidherod/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


autoload -Uz compinit
compinit

plugins=(git zsh-autosuggestions zsh-completions)


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completiona


alias config='/usr/bin/git --git-dir=$HOME/Repositories/davidherod/dotfiles --work-tree=$HOME'
alias projects="cd ~/Repositories/" 
alias aussurity="cd ~/Repositories/aussurity/"
alias condusit="cd ~/Repositories/condusit/"
alias personal="cd ~/Repositories/davidherod/"

# Vim

alias vim='nvim'

# Java

alias java-11="export JAVA_HOME=\`/usr/libexec/java_home -v 11\`; java -version"
alias java-17="export JAVA_HOME=\`/usr/libexec/java_home -v 17\`; java -version"
alias java-21="export JAVA_HOME=\`/usr/libexec/java_home -v 21\`; java -version"
alias java-23="export JAVA_HOME=\`/usr/libexec/java_home -v 23\`; java -version"

# Shellgpt
export OPENAI_API_KEY=""
alias chatgpt="cd ~/.shellgpt/;source shellgpt/bin/activate"


# Bind Up Arrow (↑) for backward history search
bindkey '^[[A' history-search-backward

# Bind Down Arrow (↓) for forward history search
bindkey '^[[B' history-search-forward


# Load Angular CLI autocompletion.
source <(ng completion script)

alias gameon='/Applications/Xcode.app/Contents/Developer/usr/bin/gamepolicyctl game-mode set on'
alias gameoff='/Applications/Xcode.app/Contents/Developer/usr/bin/gamepolicyctl game-mode set auto'

