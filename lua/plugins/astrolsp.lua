---@type LazySpec
local M = {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = true,
      },
      timeout_ms = 1000,
    },
    ---@diagnostic disable-next-line: missing-fields
    config = {
      ---@diagnostic disable-next-line: missing-fields
      html = {
        filetypes = { "html", "templ" },
      },
      htmx = {
        filetypes = { "html", "templ" },
      },
      ---@diagnostic disable-next-line: missing-fields
      tailwindcss = {
        filetypes = { "templ", "astro", "javascript", "typescript", "react" },
        init_options = { userLanguages = { templ = "html" } },
      },
    },
  },
}

return M
