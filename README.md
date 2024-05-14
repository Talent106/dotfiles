# My Dotfiles
this repository contains my dotfiles configurations. Created based on <a href="https://www.atlassian.com/br/git/tutorials/dotfiles">this article</a>.
After installed just use `config` as `git` and update/add, commit and push any file to track on your repo. 

## Installation

- Add the following alias to your .bashrc or .zshrc command first:
```shell
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
- Create a gitignore to avoid recursive problems:
```shell
echo ".dotfiles" >> .gitignore
```
- Clone de project as bare:
```shell
git clone --bare <git-repo-url> $HOME/.dotfiles
```
- Create the alias to use as "config" in your .bashrc or .zshrc:
```shell
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
- Execute the checkout to bring the files:
```shell
config checkout
```
---
## Errors on Checkout
An error can show up when some duplicated files exist like .zshrc, the following steps make a backup for you 
 review after if something need to be updated, or just move or delete the files.

```shell
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```
**After that just execute the checkout again**

---

- After the checkout works set this flag to hide untracked files:
```shell
config config --local status.showUntrackedFiles no
```

