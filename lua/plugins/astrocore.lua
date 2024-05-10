---@type LazySpec
local M = {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      notifications = false,
    },
    mappings = {
      n = {
        ["<Leader>ff"] = {
          function()
            require("telescope.builtin").find_files {
              find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
            }
          end,
          desc = "Find files",
        },

        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },

        ["<Leader>b"] = { desc = "Buffers" },
      },
      t = {},
    },
  },
}

return M
