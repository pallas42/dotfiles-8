# Dotfiles

My personal dotfiles. The following configuration exists:

```sh
drwxr-xr-x    6 benmezger staff  192 Jul 17 11:35 X
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 bin
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 doom-emacs
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 dunst
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 emacs
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 fish
drwxr-xr-x    5 benmezger staff  160 Jul 17 12:24 git
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 gnupg
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 i3
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 ipython
drwxr-xr-x    9 benmezger staff  288 Jul 21 16:44 misc
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 tmux
drwxr-xr-x    3 benmezger staff   96 Jul 17 11:35 vim
drwxr-xr-x    5 benmezger staff  160 Jul 17 12:24 zsh
```

## Installing

### Requirements

- Ansible

Install Ansible galaxy requirements with `ansible-galaxy install -r requirements.yml`

### Full install with dependencies

#### OSX

For OSX configuration files, use
[`OSX`](https://github.com/benmezger/dotfiles/tree/osx) branch, then run
`ansible-playbook -i inventory osx.yml`.

#### Linux

For Archlinux's configuration files, use the [`main`](https://github.com/benmezger/dotfiles/tree/main) branch, then run
`ansible-playbook -i inventory archlinux.yml`.

### Install specific dotfiles only

I use [GNU stow](https://www.gnu.org/software/stow/) for handling my symlinks,
it's much better than having to maintain a bash script for all links I need.

Clone this repository to your `$HOME` directory, then run `stow` against the
configuration you need. For example, for installing `zsh` run `stow zsh`. This
will symlink the current directory to your `$HOME` directory. This will not
install any external dependency, so make sure you check which dependency is
required by reading the configuration and/or checking the ansible
[roles](./roles).

## Dependencies

- ZSH
  - [Antibody](https://github.com/getantibody/antibody)
  - [FZF](https://github.com/junegunn/fzf)
- Emacs
  - [Emacs doom](https://github.com/hlissner/doom-emacs)
- System utilities
  - [wakatime](https://github.com/wakatime/wakatime)
  - [emacs](https://www.gnu.org/software/emacs/)
  - [stow](https://www.gnu.org/software/stow/)
- OSX
  - [brew](https://brew.sh/)
  - [mas](https://github.com/mas-cli/mas)
- Linux
  - [i3](https://i3wm.org/)
  - [aura](https://github.com/fosskers/aura) (archlinux)
