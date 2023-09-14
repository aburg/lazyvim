# TODO

* in insert mode when there is a cmp item: how to create newline?
  * use something else for cmp (only pick with <C-p>?)
  * use <S-cr> for forcing a newline (this sucks...)
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
