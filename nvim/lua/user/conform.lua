local M = {
	"stevearc/conform.nvim",
	event = "BufReadPre",
}

function M.config()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofmt" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Use a sub-list to run only the first available formatter
			javascript = { { "eslint_d", "eslint" } },
			typescript = { { "eslint_d", "eslint" } },
			typescriptreact = { { "eslint_d", "eslint" } },
			javascriptreact = { { "eslint_d", "eslint" } },
			json = { { "eslint_d", "eslint" } },
			html = { { "eslint_d", "eslint" } },
			css = { { "eslint_d", "eslint" } },
		},
	})
end

return M

