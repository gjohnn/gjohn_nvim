-- ~/.config/nvim/lua/configs/nvim-tree.lua

return function()
    require("nvim-tree").setup({
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
    })
  end
  