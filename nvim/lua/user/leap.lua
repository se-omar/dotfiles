local M = {
	"ggandor/leap.nvim",
	event = "BufReadPre",
}

function M.config()
	require('leap').add_default_mappings()
	vim.api.nvim_set_hl(0, 'LeapLabelPrimary', {   fg='Black', bg='Cyan' })
	vim.api.nvim_create_autocmd('User', {
		pattern = 'LeapLeave',
		callback = function()
			vim.cmd.hi('Cursor', 'blend=0')
			vim.opt.guicursor:remove { 'a:Cursor/lCursor' }
		end,
	}
	)
end

return M
