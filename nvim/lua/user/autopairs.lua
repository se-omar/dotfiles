local M = {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = {
    {
      "hrsh7th/nvim-cmp",
      event = {
        "InsertEnter",
      },
    },
  },
}

function M.config()
  require("nvim-autopairs").setup {
    check_ts = true, -- treesitter integration
    disable_filetype = { "TelescopePrompt" },
    ts_config = {
      lua = { "string", "source" },
      javascript = { "string", "template_string" },
      java = false,
    },
  }

  local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  local cmp = require "cmp"

  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {})
end

return M
