return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      'tinymist',
      'svelte',
      'lua_ls',
      'gopls',
      'ts_ls',
      'html',
      'zls',
      'dockerls',
      'pretier'
    },
  },
  dependencies = { { "mason-org/mason.nvim", opts = {} }, "neovim/nvim-lspconfig" },
}
