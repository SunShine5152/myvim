# Setup fzf
# ---------
if [[ ! "$PATH" == */root/.vim/fzf/fzf-master/bin* ]]; then
  PATH="${PATH:+${PATH}:}/root/.vim/fzf/fzf-master/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/root/.vim/fzf/fzf-master/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/root/.vim/fzf/fzf-master/shell/key-bindings.bash"

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
      IFS=$'\n' out=("$(fzf --preview 'cat {}' --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)")
        key=$(head -1 <<< "$out")
          file=$(head -2 <<< "$out" | tail -1)
            if [ -n "$file"  ]; then
                    [ "$key" = ctrl-o  ] && open "$file" || ${EDITOR:-vim} "$file"
                      fi
                      
}

# cd to selected directory
fd() {
      local dir
        dir=$(find ${1:-.} -path '*/\.*' -prune \
                              -o -type d -print 2> /dev/null | fzf +m) &&
                                cd "$dir"
        
}

#find-in-file - usage: fif <searchTerm>
fif() {
      if [ ! "$#" -gt 0  ]; then echo "Need a string to search for!"; return 1; fi
        rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
        
}
