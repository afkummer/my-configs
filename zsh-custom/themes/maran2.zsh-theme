# Theme with full path names and hostname
# Handy if you work on different servers all the time;
PROMPT='%{$fg[black]%}%n%{$reset_color%}%B@%{$fg[black]%}%M%b %{$fg[black]%}%2/%{$reset_color%}$(git_prompt_info) %(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[black]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

