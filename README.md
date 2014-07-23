ubuntuInit
==========

Scripts and Dotfiles which Smokycat will deploy first on new Ubuntu server.

Run `totalDeploy` to sequential deploy processes listed bellow.
Each deploy is also be executed as `<processname>/deploy`.

### zsh

- install zsh
- deploy ~/.zshrc (overwrite)
- deploy ~/.zsh/xxx which .zshrc do `source` (overwrite)
- `chsh -s /bin/zsh`

### default-editor

- `sudo update-alternatives --config editor`

### git

- install git (I expect you have installed git, but to make sure).
- `git config --global user.email "$input"`
- `git config --global user.name "$input"`

### github
