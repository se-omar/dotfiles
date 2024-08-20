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
			javascript = { { "eslint_d", "eslint_d" } },
			typescript = { { "eslint_d", "eslint_d" } },
			typescriptreact = { { "eslintd", "eslint_d" } },
			javascriptreact = { { "eslintd", "eslint_d" } },
			json = { { "eslint_d", "eslint_d" } },
			html = { { "eslint_d", "eslint_d" } },
			css = { { "eslint_d", "eslint_d" } },
		},
	})
end

return M

