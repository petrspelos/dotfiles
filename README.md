# Peter's dotfiles

This repository contains my [dotfiles](https://wiki.archlinux.org/index.php/Dotfiles).

It uses [GNU Stow](https://www.gnu.org/software/stow/) to create symlinks to your home directory.

## Usage

1. Clone the repository anywhere on your machine.
2. Navigate into the root of the repository.
3. Use `stow -t ~ PackageDirectory`

For example
```
stow -t ~ vim
```
would apply the vim config files. **Note that this does not overwrite existing configurations.**

