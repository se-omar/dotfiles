local M = {
  "ggandor/leap.nvim",
  event = "BufReadPre",
}

function M.config()
  require('leap').add_default_mappings()
end

return M
