ubuntuInit
==========

Scripts and Dotfiles which Smokycat will deploy first on new Ubuntu server.

Run `totalDeploy` to sequential deploy processes listed bellow.
Each deploy is also be executed as `<processname>/deploy`.

zsh
---

- install zsh
- deploy ~/.zshrc (overwrite)
- deploy ~/.zsh/* which .zshrc do `source` (overwrite)
- `chsh -s /bin/zsh`
