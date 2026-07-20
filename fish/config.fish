if status is-interactive
    alias ls="eza --group-directories-first --sort=name"
    alias ll="eza -lh --group-directories-first --sort=name"
    alias la="eza -lha --group-directories-first --sort=name"
    alias tree="lstr --dirs-first --dotfiles-first --natural-sort"
    alias cat="batcat"
end

function fish_prompt
    set -l user (whoami)
    set -l host (hostname -s)
    set -l dir (prompt_pwd)
    set -l git_branch (fish_git_prompt)

    echo -n (set_color green)"$user"
    echo -n (set_color normal)" at "
    echo -n (set_color green)"$host"
    echo -n (set_color blue)" [$dir]"
    
    if test -n "$git_branch"
        echo -n (set_color magenta)"$git_branch"
    end
    
    echo -n (set_color normal)
    echo
    echo -n (set_color normal)"λ "
end

set -g fish_autosuggestion_enabled 0
set -g fish_greeting ""