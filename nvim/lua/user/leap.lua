local M = {
	"ggandor/leap.nvim",
	event = "BufReadPre",
}

function M.config()
	require('leap').add_default_mappings()
	vim.api.nvim_set_hl(0, 'LeapLabelPrimary', {   fg='Black', bg='Cyan' })
	-- Hide the (real) cursor when leaping, and restore it afterwards.
	vim.api.nvim_create_autocmd('User', {
		pattern = 'LeapEnter',
		callback = function()
			vim.cmd.hi('Cursor', 'blend=100')
			vim.opt.guicursor:append { 'a:Cursor/lCursor' }
		end,
	}
	)
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
