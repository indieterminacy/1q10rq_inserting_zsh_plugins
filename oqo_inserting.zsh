# No longer need to type in 'bundle exec'.
#https://github.com/rhysd/zsh-bundle-exec
# Make sure you use double quotes
zplug "zsh-users/zsh-history-substring-search"


# OPTION 1: for most systems
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
## VI mode ##############################################
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
####################
####################
# Can manage a plugin as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", \
    as:command, of:"bin/{ \
        histuniq, \
        color \
    }"
