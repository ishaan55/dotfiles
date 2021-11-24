### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "vim"             
set VISUAL "code"             

### SET MANPAGER
### Uncomment only one of these!

### "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | batcat -l man -p'"

### "vim" as manpager
# set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### ALIASES ###

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

if test -f ~/.bash_aliases
	. ~/.bash_aliases
end

function extract --description "Expand or extract bundled & compressed files"
  for file in $argv
    if test -f $file
      echo -s "Extracting " (set_color --bold blue) $file (set_color normal)
      switch $file
        case '*.tar'
          tar -xvf $file
        case '*.tar.bz2'
          tar -jxvf $file
        case '*.tar.gz'
          tar -zxvf $file
        case '*.bz2'
          bunzip2 $file
          # Can also use: bzip2 -d $file
        case '*.gz'
          gunzip $file
        case '*.rar'
          unrar x $file
        case '*.zip'
          unzip $file
        case '*.pax'
          pax -r < $file
        case '*'
          echo "Extension not recognized, cannot extract $file"
      end
    else
      echo "$file is not a valid file"
    end
  end
end

### Random Shell Color Scripts ###
colorscript random

### SETTING THE STARSHIP PROMPT ###
starship init fish | source
