# dotfiles

Managed by [chezmoi](https://www.chezmoi.io/).

## What's tracked

| Target | Source |
|--------|--------|
| `~/.zshrc` | `dot_zshrc` |
| `~/.config/kglobalshortcutsrc` | `dot_config/private_kglobalshortcutsrc` |
| `~/.config/kwinrc` | `dot_config/private_kwinrc` |
| `~/.claude/settings.json` | `private_dot_claude/settings.json` |
| `~/.copilot/permissions-config.json` | `private_dot_copilot/private_permissions-config.json` |
| `/etc/zsh/zshrc.local` | `etc_zsh/zshrc.local` (via `run_onchange_` script) |
| `/etc/zsh/zprofile` | `etc_zsh/zprofile` (via `run_onchange_` script) |

## Setup

```bash
chezmoi init git@github.com:Koswu/dotfiles.git
chezmoi apply
```

`/etc/zsh/` files require sudo — the deploy script will prompt automatically.

## Archive

The previous (non-chezmoi) dotfiles are preserved at tag `archive-pre-chezmoi`.
