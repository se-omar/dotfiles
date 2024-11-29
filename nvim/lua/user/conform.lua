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
			javascript = { "eslint", "prettierd", stop_after_first = true },
			typescript = { "eslint", "prettierd", stop_after_first = true },
			typescriptreact = { "eslint_d", "prettierd", stop_after_first = true },
			javascriptreact = { "eslint_d", "prettierd", stop_after_first = true },
			json = { "eslint", "prettierd", stop_after_first = true },
			html = { "eslint", "prettierd", stop_after_first = true },
			css = { "eslint", "prettierd", stop_after_first = true },
		},
	})
end

return M
