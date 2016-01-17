# dotvim

This repo contains my config files and plugins for vim. To use them, copy
`vimrc` to `.vimrc` (Mac/Ubuntu) or `_vimrc` (Windows). Also copy the names of
the `vim` folder to `.vim` (Mac/Ubuntu) or `vimfiles` (Windows). Most of the
plugins can be used as-is except for:

- neocomplete: requires vim to be compiled with `+lua`.

- jedi-vim: requires vim to be compiled with `+python` or `+python3`.

- syntastic: requires `JShint` to be installed as a global node module using
  NodeJS for javascript files. This is not a necessity, as it just doesn't do
  any checking in javascript files if JShint is not isntalled.

The best way to do this is to build vim from source. If that can't be done,
just remove the neocomplete and jedi-vim folders from the bundle directory.

## Helpful hints

- Opening up NERDTree: `ctrl-n`.

- Opening up CtrlP: `ctrl-p`.

- Navigating neocomplete's suggesions: `ctrl-n` from top, `ctrl-p` from bottom.

- Switching between windows in vim: `ctrl-ww`.

- General navigation between windows in vim `ctrl-w(hjkl)`
  (left/down/up/right moves to that window).

- Open scratch pad: `gs`. If something is selected, `gs` will copy it into the
  pad.

- Increase date by increasing number under cursor: `ctrl-A`.

- Decrease date by decreasing number under cursor: `ctrl-X`.
