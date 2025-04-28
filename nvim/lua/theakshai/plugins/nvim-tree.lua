return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      -- Disable netrw by default, as nvim-tree takes over
      disable_netrw = true,
      hijack_netrw = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      view = {
        width = 28,
        side = "left",
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
    })
  end
}

