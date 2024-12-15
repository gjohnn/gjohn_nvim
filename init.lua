vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
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
  {
    "goolord/alpha-nvim",
    lazy = false,  -- Hacerlo no lazy para que se cargue en el inicio
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Encabezado personalizado
      dashboard.section.header.val = {
        [[██████╗                      ██╗ ██████╗ ██╗  ██╗███╗   ██╗]],
        [[██╔════╝                      ██║██╔═══██╗██║  ██║████╗  ██║]],
        [[██║  ███╗                     ██║██║   ██║███████║██╔██╗ ██║]],
        [[██║   ██║                ██   ██║██║   ██║██╔══██║██║╚██╗██║]],
        [[╚██████╔╝███████╗███████╗╚█████╔╝╚██████╔╝██║  ██║██║ ╚████║]],
        [[╚═════╝ ╚══════╝╚══════╝ ╚════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝]],
      }

      -- Botones de inicio rápido
      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "  > Recent files", ":Telescope oldfiles<CR>"),
        dashboard.button("c", "  > Open folder", ":NvimTreeToggle<CR>"),
        dashboard.button("q", "  > Exit", ":qa<CR>")
      }

      -- Mensaje en el pie de página
      dashboard.section.footer.val = "🎉 NvChad + Alpha configurado 🎉"

      -- Configuración final
      alpha.setup(dashboard.config)
    end,
  },

  -- Plugin nvim-web-devicons (para los íconos de Nerd Font)
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = function()
      require("nvim-web-devicons").setup({
        default = true,  -- Activar íconos predeterminados
      })
    end,
  },

  -- Plugin nvim-tree (configuración para mostrar los íconos)
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
}, lazy_config)


-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
