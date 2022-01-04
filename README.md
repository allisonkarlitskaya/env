# System setup

This is my "dotfiles" repo to get a new system up and running.

It's divided into `system/` and `user/` components.  Each component has a
number of steps, as well as packages.  Each step should be idempotent.

For the `system/` subdirectory, the packages are copied into place.

For the `user/` subdirectory, the packages are managed with `stash`, a simple
reimplementation of [GNU Stow](https://www.gnu.org/software/stow/), provided in
this repository.
