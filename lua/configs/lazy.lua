-- ~/.config/nvim/lua/configs/lazy.lua

return {
  -- Plugin principal: NvChad
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  -- Importar otros plugins
  { import = "plugins" },

  -- Plugin Alpha
  { "goolord/alpha-nvim",
   lazy = false, 
   config = function()
    require("configs.alpha")  -- Cargar la configuración desde el archivo configs.alpha
  end },

  -- Plugin nvim-web-devicons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = function()
      require("configs.web_devicons")  -- Asegúrate de tener este archivo en la ruta correcta
    end,
  },

  -- Plugin nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        renderer = {
          icons = {
            show = {
              file = true,  -- Mostrar íconos de archivos
              folder = true,  -- Mostrar íconos de carpetas
              folder_arrow = true,  -- Mostrar flechas en las carpetas
              git = true,  -- Mostrar íconos de git (si hay repositorios)
            },
          },
        },
      })
    end,
  },

  -- Otros plugins
  { import = "plugins" },

  -- Defaults para Lazy.nvim
  defaults = { lazy = true },

  -- Instalar colorescheme
  install = { colorscheme = { "nvchad" } },

  -- UI para Lazy.nvim
  ui = {
    icons = {
      ft = "",
      lazy = "󰂠 ",
      loaded = "",
      not_loaded = "",
    },
  },

  -- Optimización de performance
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}
