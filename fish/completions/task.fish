function _task_completions
    # Get the current word being typed
    set cur (commandline -p)

    # Get the previous word
    set prev (commandline -oprev)

    # Get the available commands from `task help`
    set commands (./task help | grep -A100 -e '---' | awk '{print $2}' | sed 's/^[[:space:]]*//' | grep -v '^$' | tr '\n' ' ')

    if test (count (commandline -opc)) -eq 1
        # Provide completions for the command part (second word)
        complete -c task -f -n "__fish_seen_subcommand_from $prev" -a "$commands"
    else if test (count (commandline -opc)) -eq 2
        # Provide file path completions for the third parameter
        complete -c task -f -n "__fish_seen_subcommand_from $prev" -a (ls)
    end
end
