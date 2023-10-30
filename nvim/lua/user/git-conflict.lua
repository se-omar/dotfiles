local M = {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = true,
  event = "VeryLazy",
}

function M.config()
  require("git-conflict").setup()
end

return M
