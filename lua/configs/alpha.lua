-- ~/.config/nvim/lua/configs/alpha.lua

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
  dashboard.button("q", "  > Exit", ":qa<CR>")
}

-- Mensaje en el pie de página
dashboard.section.footer.val = "🎉 NvChad + Alpha configurado 🎉"

-- Configuración final
alpha.setup(dashboard.config)
