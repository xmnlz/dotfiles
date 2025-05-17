return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    ensure_installed = {
      'javascript',
      'typescript',
      'c',
      'cmake',
      'lua',
      'sql',
      'vim',
      'vimdoc',
      'query',
      'elixir',
      'erlang',
      'heex',
      'eex',
      'kotlin',
      'jq',
      'dockerfile',
      'json',
      'html',
      'terraform',
      'go',
      'tsx',
      'bash',
      'ruby',
      'markdown',
      'java',
      'astro',
    },
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
