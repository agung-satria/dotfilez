# Link

https://medium.com/tech-notes-and-geek-stuff/install-zsh-on-arch-linux-manjaro-and-make-it-your-default-shell-b0098b756a7a

# Install ZSH:

```sh
sudo pacman -S zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Syntax Highlighting:

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

# Auto Suggentsions:

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

# FZF (ga usah install)

```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

# Fantastic search tool combined with fd:

```sh
sudo pacman -S fd
```

You’ll need to add the following lines at the end of .zshrc:

```sh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height=80%"
```

# Configuring Zsh:

For advanced configuration, modify the ~./zshrc config file:

```sh
plugins=(
    fzf <-- hapus ini kalau ga install fzf di atas
    git
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```

# Theming

https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ex :

```sh
# default theme
# ZSH_THEME="robbyrussell"
ZSH_THEME="alanpeabody"
```

# Powerlevel10k

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set THEME in .zshrc

```sh
ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
```

zsh

# Copy config file

```sh
cp -R shell ~/.config/
```

# Add Custom Alias, Shortcut, DirName

add this lines to zshrc:

```sh
# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

export VISUAL=nvim;
export EDITOR=nvim;

```

# Custom function
Use xtract <filename> to extract compressed file


# Add Abbreviations to zsh

add this lines to zshrc:

```sh
# zsh abbreviations===================================
# declare a list of expandable aliases to fill up later
typeset -a ealiases
ealiases=()

# write a function for adding an alias to the list mentioned above
function abbrev-alias() {
    alias $1
    ealiases+=(${1%%\=*})
}

# expand any aliases in the current line buffer
function expand-ealias() {
    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle magic-space
}
zle -N expand-ealias

# Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
bindkey ' '        expand-ealias
bindkey '^ '       magic-space     # control-space to bypass completion
bindkey -M isearch " "      magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-alias-and-accept-line() {
    expand-ealias
    zle .backward-delete-char
    zle .accept-line
}
zle -N accept-line expand-alias-and-accept-line

# zsh abbreviations alias
abbrev-alias g="git"
abbrev-alias gst="git status"
abbrev-alias gad="git add ."
abbrev-alias gcb="git checkout --branch"
abbrev-alias ll="ls -l"
abbrev-alias lsuser="awk -F':' '{ print $1}' /etc/passwd"
abbrev-alias lsgroup="cut -d: -f1 /etc/group | sort"
abbrev-alias sw="hsetroot -cover ~/Pictures/arch.png"
abbrev-alias refont="sudo fc-cache -fv"
abbrev-alias fst="xset r rate 300 50"
abbrev-alias mp4tomp3="ffmpeg -i video.mp4 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 audio.mp3"
abbrev-alias mp3toogg="ffmpeg audio.mp3 -vn audio.ogg"
abbrev-alias mkvtomp4="ffmpeg -i video.mkv video.mp4 -qscale 0"
abbrev-alias avitomp4="ffmpeg -i video.avi video.mp4 -qscale 0"
abbrev-alias mp4togif="ffmpeg -i video.mp4 video.gif"
abbrev-alias mp4togifdefineduration="ffmpeg -i video.mp4 -ss 00:00:06<start-time> -t 4<duration> video.gif"
abbrev-alias webcamrecord="ffmpeg -y -i /dev/video0 output.mkv"
abbrev-alias mkslideshow="cat folder/* | ffmpeg -y -framerate 1.5 -f image2pipe -i - -i sound.ogg -acodec copy output.mkv"
abbrev-alias tn="tmux new-session -s "
abbrev-alias tk="tmux kill-session -t "
abbrev-alias tr="tmux rename-session -t "
abbrev-alias tc="tmux attach-session -t "
# make sure ffmpeg and lame are installed
# zsh abbreviations===================================

```

# .zshrc

> Compare .zshrc(in this repo) with yours before copy paste it

# Refresh

```sh
source ~/.zshrc
```

# Make Zsh default

```sh
chsh -s $(which zsh)
```

> Enjoy!
