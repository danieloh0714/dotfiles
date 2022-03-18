# import colors from pywal
(cat ~/.cache/wal/sequences &)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# nvim
alias v="nvim"

# for tracking dotfiles
alias config="git --git-dir=$HOME/docs/projects/dotfiles --work-tree=$HOME"

# git
alias gaa="git add .; git status"

# colorize
alias l="ls -alh --color"
alias la="ls -ah --color"
alias ll="ls -lh --color"
alias ls="ls --color"
alias grep="grep --color"

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# docs
alias site="cd ~/docs/projects/website"
alias theo="cd ~/docs/theology"
alias tui="cd ~/docs/projects/bubbletea/reformed-tui"

# recording
alias record="ffmpeg -f pulse -i default out.mp3"
alias screencast="ffmpeg -f x11grab -i :0.0 out.mp4"
alias screencast_audio="ffmpeg -f x11grab -i :0.0 -f pulse -i default out.mp4"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
