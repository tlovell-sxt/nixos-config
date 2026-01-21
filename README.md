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

## Vim Keybindings cheatsheet
The neovim config is a somewhat minimal configuration of [`nvf`](https://nvf.notashelf.dev/), which comes with a lot of sensible, familiar defaults.

Regardless, here's some of the more useful keybindings for the enabled plugins...

**NOTE: `<leader>` is set to `space`**

### Comments
| Key | Action |
| --- | --- |
| `gc` | toggle comment selection |
| `gcc` | toggle comment line |

### Language servers
Currently only nix and rust are enabled, enabling others is simple in `home/programs/nvim.nix`.
| Key | Action |
| --- | --- |
| `<leader>lgd` | go to definition |
| `<leader>lgr` | go to references |
| `<leader>ln` | rename symbol under cursor |
| `<leader>le` | show error under cursor |
| `<leader>lgn` | go to next error |
| `<leader>lgp` | go to previous error |
| `<leader>lge` | expand macro (custom, rust-specific) |

### Completion
| Key | Action |
| --- | --- |
| `tab` | next completion |
| `shift+tab` | previous completion |
| `ctrl+y` | confirm completion |

### Surround
Change or add surroundings, e.g. `""` or `()`.
| Key | Action |
| --- | --- |
| `gz<sur>` | surround the selection with `<sur>` |
| `gzr<old-sur><new-sur>` | change the `<old-sur>` surrounding the cursor to `<new-sur>`. Some examples: |
| `gzr})` | change the `{}` around cursor with `()` |
| `gzr'"` | change the `''` around cursor with `""` |
| `gz<motion><sur>` | surround `<motion>` with `<sur>`. Some examples: |
| `gziw"` | surround current word with quotes |
| `gza"'` | surround the current `""` string with another pair of `''` |

