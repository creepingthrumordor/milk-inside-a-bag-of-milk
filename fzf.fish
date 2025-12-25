set -l color00 '#25212c'
set -l color01 '#8869bf'
set -l color02 '#8c6acd'
set -l color03 '#977acc'
set -l color04 '#8157ce'
set -l color05 '#9477c8'
set -l color06 '#a084d4'
set -l color07 '#cac7d1'
set -l color08 '#a094b8'
set -l color09 '#baa7dd'
set -l color0A '#c0ace7'
set -l color0B '#cabae7'
set -l color0C '#9465e9'
set -l color0D '#a685e2'
set -l color0E '#b496eb'
set -l color0F '#d7d3de'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
