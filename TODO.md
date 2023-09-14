# TODO

* make <leader>cb work like <leader>bd (the latter will move to another buffer properly, while the former will switch to the tree buffer if we just came from there and it was the most recently created buffer)
* take twig integration from kickstart.nvim IF that is good
* tailwindcss https://www.lazyvim.org/extras/lang/tailwind
* make trouble highlight the TODO/HACK etc.
* telescopes
  * ansible
    * mark playbook with # telescope-ansible-config: 
    * pick between available inventories
    * ask become pass?
  * shell tasks
    * picker "find_files" with filter possible?
    * only *.sh
    * every file with bash shebang?
    * only executables
      * https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/builtin/__files.lua
        * if vim.fn.executable()
    * # telescope-ansible-config
