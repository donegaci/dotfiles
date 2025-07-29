# My Dotfiles


This repo contains my configuration files (`dotfiles`) used to customise machines to my liking. They are written to work across my various devices - MacOS, Linux, and RaspberryPi devices.


I have included `dotfiles` for the following:
  - `.zshrc` - Zsh configuration with oh-my-zsh and powerlevel10k theme
  - `.gitconfig` - Git configuration and aliases
  - `.tmux.conf` - Tmux configuration
  - `.bashrc` - Bash aliases
  - `.p10k.zsh` - Powerlevel10k theme configuration

  ## Requirements

- zsh
- git
- wget (for oh-my-zsh installation)

# To use
  1. Clone this repo.
  2. Run the install script:
   ```bash
   cd ~/dotfiles
   ./install.sh
   ```
   3. Restart your terminal or run `exec zsh`
