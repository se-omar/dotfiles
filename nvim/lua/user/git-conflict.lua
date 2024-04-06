local M = {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = true,
  lazy = false,
  -- event = "BufReadPre",
}

function M.config()
  require("git-conflict").setup()
end

return M
