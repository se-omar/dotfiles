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
			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
		},
	})
end

return M

