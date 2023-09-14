vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
    config = function()
      local Terminal = require("toggleterm.terminal").Terminal

      local terminals = {
        top = Terminal:new({ cmd = "top", hidden = true, direction = "float" }),
        bottom = Terminal:new({ cmd = "bottom", hidden = true, direction = "float" }),
        shell = Terminal:new({ cmd = "$SHELL", hidden = true, direction = "float" }),
      }

      function my_term_toggle(terminal)
        terminals[terminal]:toggle()
      end

      require("toggleterm").setup()

      vim.keymap.set("n", "<f7>", "<cmd>lua my_term_toggle('shell')<cr>", { desc = "top" })
      vim.keymap.set("n", "<f8>", "<cmd>lua my_term_toggle('top')<cr>", { desc = "bottom" })
      vim.keymap.set("n", "<f9>", "<cmd>lua my_term_toggle('bottom')<cr>", { desc = "shell1" })
    end,
  },
}
