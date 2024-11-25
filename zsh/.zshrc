### ZSH HOME
export ZSH=$HOME/.dotfiles/zsh

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS


### PLUGINS

source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

### SPACESHIP CONFIG

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  julia         # Julia version info
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  exec_time     # Execution time
#  line_sep      # Line break
#  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# fix for single line prompts from 
# https://github.com/spaceship-prompt/spaceship-prompt/issues/462#issuecomment-1427133643
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_RPROMPT_ADD_NEWLINE=true

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/tnagy/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
