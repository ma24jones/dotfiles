# dotfiles

## Setup

In the HOME directory, create a folder called "dotfiles".
Then run the following in terminal.

```shell
git init --bare $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.aliases
```

## Use

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created config alias, like:

```shell
config status
config add .bash_profile
config commit -m "Add bash_profile"
config add .bashrc
config commit -m "Add bashrc"
config push
```

Reference: [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
