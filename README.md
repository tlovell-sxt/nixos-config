# `nixos-config`
This is my nixos-wsl configuration.
I intend for it to be fairly lightweight, merely containing the CLI apps and configs I need for work.

## Setup
This repository is intended to be in your home directory, with `/etc/nixos` symlinked to it like https://nixos-and-flakes.thiscute.world/nixos-with-flakes/other-useful-tips#managing-the-configuration-with-git.

```bash
# Clone the repo into the home directory (with a temporary git install)
cd
nix-shell -p git --command "git clone https://github.com/tlovell-sxt/nixos-config"

# Backup the original configuration
sudo mv /etc/nixos /etc/nixos.bak

# Create the symlink
sudo ln -s ~/nixos-config /etc/nixos

# Edit me.nix with your details...
nix-shell -p neovim --command "nvim ~/nixos-config/me.nix"

# Build the new configuration
sudo nixos-rebuild switch

# Ignore changes to the me.nix..
cd ~/nixos-config && git update-index --skip-worktree me.nix

```

And that's it!
