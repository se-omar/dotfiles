local M = {
	"barrett-ruth/live-server.nvim",
	event = "VeryLazy"
}

function M.config()
	require('live-server').setup()
end

return M
