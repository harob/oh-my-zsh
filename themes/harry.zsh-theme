# Harry's personal prompt

# Entirely left-hand version:
# PROMPT='%F{magenta}[%*] %F{yellow}%n@%m %F{cyan}%c%F{green}$ %f'

vi_mode_indicator='$'

PROMPT='%F{yellow}%n@%m %F{cyan}%c%F{green} $vi_mode_indicator %f'
RPROMPT=' %F{magenta}[%*]%f'

function zle-keymap-select() {
  vi_mode_indicator="${${KEYMAP/vicmd/☯}/(main|viins)/$}"
  zle reset-prompt
}
zle -N zle-keymap-select

