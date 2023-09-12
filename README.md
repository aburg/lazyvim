# 💤 LazyVim

Modified from the starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Pre-Installation

```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

## installation

```
git clone git@github.com:aburg/lazyvim ~/.config/nvim
```

## Cheatsheet

* comment
  * n_gcc
  * v_gc

## TODO

* disable spelling by default
* take twig integration from kickstart.nvim IF that is good
* tailwindcss https://www.lazyvim.org/extras/lang/tailwind
* make trouble highlight the TODO/HACK etc.
* telescopes
  * ansible
    * mark playbook with # telescope-ansible-config: 
    * pick between available inventories
    * ask become pass?
  * shell tasks
    * every file with bash shebang?
    * only executables
      * https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/builtin/__files.lua
        * if vim.fn.executable()
    * # telescope-ansible-config
