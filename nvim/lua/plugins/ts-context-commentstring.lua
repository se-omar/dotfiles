return {
  'JoosepAlviste/nvim-ts-context-commentstring',
  event = 'BufReadPre',
  opts = {
    enable_autocmd = false,
  },
  config = function(_, opts)
    -- This line applies your opts (disabling the autocmd)
    require('ts_context_commentstring').setup(opts)

    local get_option = vim.filetype.get_option
    vim.filetype.get_option = function(filetype, option)
      return option == 'commentstring' 
        and require('ts_context_commentstring.internal').calculate_commentstring() 
        or get_option(filetype, option)
    end
  end,
}
