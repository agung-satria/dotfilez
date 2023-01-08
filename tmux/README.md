# Install tmux

```sh
sudo pacman -S install tmux
sudo apt install tmux
```

# Install tpm (tmux plugin manager)

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

# Config

```sh
cp .tmux.conf ~/
```

# Run 'tmux', or source if tmux is already running

```sh
tmux source ~/.tmux.conf
```

# Install Plugins

- `prefix` = `C-a` & `C-b`
- `prefix + r` to reload
- `prefix + I` (install plugins)
- `prefix + alt-U` (uninstall plugins)
