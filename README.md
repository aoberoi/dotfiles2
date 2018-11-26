# ankur's dotfiles

1. Clone the repo into `~/.dotfiles`.
2. Get the submodules (for antigen): `git submodule init; git submodule update`.
3. Use GNU Stow from the `~/.dotfiles` directory to create symlinks at the top level of the home directory (e.g.
   `stow zsh`).
4. Install zgen:
  - `git remote add -f zgen https://github.com/tarjoilija/zgen.git`
  - `git subtree add --prefix zgen/.zgen zgen master --squash`

Notes:
* http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
* https://git-scm.com/book/en/v2/Git-Tools-Submodules
* Updating zgen should look like: `git fetch zgen master && git subtree pull --prefix zgen/.zgen zgen master --squash`. See: https://www.atlassian.com/blog/git/alternatives-to-git-submodule-git-subtree


