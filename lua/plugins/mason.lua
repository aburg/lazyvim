return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "emmet-language-server",
        "flake8",
        "intelephense",
        "shellcheck",
        "shfmt",
        "stylua",
        "svelte-language-server",
        "typescript-language-server",
      },
    },
  },
}
