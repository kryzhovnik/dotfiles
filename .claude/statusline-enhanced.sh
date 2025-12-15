#!/bin/bash

input=$(cat)

dir=$(echo "$input" | jq -r '.workspace.current_dir' | sed "s|$HOME|~|")
model=$(echo "$input" | jq -r '.model.display_name')

# Git
git_branch=""
git_indicator=""
git_color="32"
if git rev-parse --git-dir >/dev/null 2>&1; then
    git_branch=$(git -c color.ui=never symbolic-ref --short HEAD 2>/dev/null || git -c color.ui=never rev-parse --short HEAD 2>/dev/null)
    if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null || [ -n "$(git -c core.fileMode=false status --porcelain --ignore-submodules 2>/dev/null)" ]; then
        git_color="33"
        git_indicator="±"
    fi
fi

# Output: dir | model | git
printf "\033[46;30m%s \033[0;36m\033[0m" "$dir"
printf " \033[2;37m%s\033[0m" "$model"
[ -n "$git_branch" ] && printf " \033[${git_color}m %s%s\033[0m" "$git_branch" "$git_indicator"

echo
