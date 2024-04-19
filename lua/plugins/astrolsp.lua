---@type LazySpec
local M = {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = true,
      },
      disabled = {
        "tsserver",
      },
      timeout_ms = 1000,
    },
  },
}

return M
