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
			javascript = { { "prettierd", "eslint_d" } },
			typescript = { { "prettierd", "eslint_d" } },
			typescriptreact = { { "prettierd", "eslint_d" } },
			javascriptreact = { { "prettierd", "eslint_d" } },
			json = { { "prettierd", "eslint_d" } },
			html = { { "prettierd", "eslint_d" } },
			css = { { "prettierd", "eslint_d" } },
		},
	})
end

return M

