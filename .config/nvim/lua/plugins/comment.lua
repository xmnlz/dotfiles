return {
  -- Treesitter for syntax highlighting
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    lazy = true,
    event = 'BufReadPre',
    dependencies = {
      'numToStr/Comment.nvim',
    },
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end,
  },
}
