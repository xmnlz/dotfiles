return {
  -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
    },
  },
  opts = {
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      svelte = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      astro = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      javascript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      json = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      graphql = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      java = { 'google-java-format' },
      kotlin = { 'ktlint' },
      ruby = { 'standardrb' },
      markdown = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      erb = { 'htmlbeautifier' },
      html = { 'htmlbeautifier' },
      bash = { 'beautysh' },
      proto = { 'buf' },
      rust = { 'rustfmt' },
      yaml = { 'yamlfix' },
      toml = { 'taplo' },
      css = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      scss = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
      sh = { 'shellcheck' },
      go = { 'gofmt' },
    },
  },
}
