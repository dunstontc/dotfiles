fuck () {
    TF_HISTORY=$(fc -ln -10)
    TF_CMD=$(
        TF_ALIAS=fuck
        TF_SHELL_ALIASES=$(alias)
        TF_HISTORY=$TF_HISTORY
        PYTHONIOENCODING=utf-8
        thefuck THEFUCK_ARGUMENT_PLACEHOLDER $*
    ) && eval $TF_CMD;
    test -n "$TF_CMD" && print -s $TF_CMD
}

