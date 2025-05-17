return {
  'ggandor/leap.nvim',
  event = 'BufReadPre',
  config = function()
    require('leap').add_default_mappings()
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_create_autocmd('User', {
      pattern = 'LeapLeave',
      callback = function()
        vim.cmd.hi('Cursor', 'blend=0')
        vim.opt.guicursor:remove { 'a:Cursor/lCursor' }
      end,
    })
  end,
}
