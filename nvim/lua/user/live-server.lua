local M = {
	"barrett-ruth/live-server.nvim",
	event = "VeryLazy",
	enabled = false
}

function M.config()
	require('live-server').setup()
end

return M
