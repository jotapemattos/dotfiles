# dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── brew/       # Brewfile (all Homebrew packages)
├── ghostty/    # Ghostty terminal config
├── nvim/       # Neovim config (LazyVim)
├── starship/   # Starship prompt
├── tmux/       # tmux config + TPM plugins
└── zsh/        # .zshrc (Oh My Zsh)
```

## Setup on a new machine

### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install Stow

```bash
brew install stow
```

### 3. Clone the repo

```bash
git clone <your-repo-url> ~/dotfiles
```

### 4. Symlink the Brewfile and install all packages

```bash
cd ~/dotfiles
stow brew
brew bundle --global
```

### 5. Symlink the remaining configs

```bash
stow ghostty nvim starship tmux zsh
```

### 6. Install tmux plugins

Open tmux and press `prefix + I` to install all plugins via TPM.

### 7. Install Neovim plugins

Open Neovim — LazyVim will automatically install all plugins on first launch.

## Tools

| Tool                                           | Description                                                  |
| ---------------------------------------------- | ------------------------------------------------------------ |
| [Neovim](https://neovim.io)                    | Text editor — configured with [LazyVim](https://lazyvim.org) |
| [Ghostty](https://ghostty.org)                 | Terminal emulator                                            |
| [tmux](https://github.com/tmux/tmux)           | Terminal multiplexer                                         |
| [Starship](https://starship.rs)                | Cross-shell prompt                                           |
| [Oh My Zsh](https://ohmyz.sh)                  | Zsh framework                                                |
| [GNU Stow](https://www.gnu.org/software/stow/) | Symlink manager for dotfiles                                 |
