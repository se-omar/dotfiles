local M = {
	"mfussenegger/nvim-lint",
	event = "BufReadPre",
}

function M.config()
	require("lint").linters_by_ft = {
		lua = { "luacheck" },
		go = { "golangci_lint" },
		python = { "flake8" },
		javascript = { "eslint_d" },
		typescript = { "eslint_d" },
		typescriptreact = { "eslint_d" },
		javascriptreact = { "eslint_d" },
		json = { "eslint_d" },
		html = { "eslint_d" },
		css = { "eslint_d" },
	}
end

return M
