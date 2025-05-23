return {
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
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { 'stylua' },
      go = { 'gofmt' },
      python = { 'isort', 'black' },
      javascript = { 'eslint_d', 'prettierd' },
      typescript = { 'eslint_d', 'prettierd' },
      typescriptreact = { 'eslint_d', 'prettierd' },
      javascriptreact = { 'eslint_d', 'prettierd' },
      json = { 'prettierd' },
      html = { 'prettierd' },
      css = { 'prettierd' },
    },
  },
}
