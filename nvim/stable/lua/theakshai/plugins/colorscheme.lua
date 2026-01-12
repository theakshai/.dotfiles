return {
  "Mofiqul/vscode.nvim",
  priority = 1000,   -- must load before other UI plugins
  lazy = false,      -- load at startup
  config = function()
    -- Choose ONE, not both
    vim.o.background = "dark"
    -- vim.o.background = "light"

    local vscode = require("vscode")
    local c = require("vscode.colors").get_colors()

    vscode.setup({
      transparent = true,

      italic_comments = true,
      italic_inlayhints = true,

      underline_links = true,
      disable_nvimtree_bg = true,
      terminal_colors = true,

      color_overrides = {
        vscLineNumber = "#FFFFFF",
      },

      group_overrides = {
        Cursor = {
          fg = c.vscDarkBlue,
          bg = c.vscLightGreen,
          bold = true,
        },
      },
    })

    vim.cmd.colorscheme("vscode")
  end,
}

