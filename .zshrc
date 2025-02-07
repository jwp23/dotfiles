# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/josephpresley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup pure prompt
autoload -U promptinit; promptinit
prompt pure

# Add time and date to pure prompt
eval "original_$(declare -f prompt_pure_preprompt_render)"
prompt_pure_preprompt_render() {
  local prompt_pure_date_color='239'
  local prompt_pure_date_format="[%y/%m/%d %H:%M:%S]"
  zstyle -t :prompt:pure:date color
  if [ $? -eq 1 ]; then
    zstyle -s :prompt:pure:date color prompt_pure_date_color
  fi
  zstyle -t :prompt:pure:date format
  if [ $? -eq 1 ]; then
    zstyle -s :prompt:pure:date format prompt_pure_date_format
  fi
  local prompt_pure_date=$(date "+$prompt_pure_date_format")
  original_prompt_pure_preprompt_render
  PROMPT="%F{$prompt_pure_date_color}${prompt_pure_date}%f $PROMPT"
}

# zsh autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fix for navigation keys in Intellij terminal
if [[ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]]; then
  bindkey "∫" backward-word # Option-b
  bindkey "ƒ" forward-word  # Option-f
  bindkey "∂" delete-word   # Option-d
fi

# source shell agnostic profile
source ~/.profile

