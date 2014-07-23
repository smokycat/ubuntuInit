ubuntuInit
==========

Scripts and Dotfiles which Smokycat will deploy first on new Ubuntu server.

zsh
---

- install zsh
- deploy ~/.zshrc (overwrite)
- deploy ~/.zsh/* which .zshrc do `source` (overwrite)
- `chsh -s /bin/zsh`
