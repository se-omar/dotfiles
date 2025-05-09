local M = {
	"supermaven-inc/supermaven-nvim",
	event = "Bufenter",
	config = function()
		require("supermaven-nvim").setup({})
	end,
}

return M
