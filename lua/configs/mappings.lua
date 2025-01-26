-- mappings.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Mapas de teclas personalizados
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
map("n", "<Leader>f", ":Telescope find_files<CR>", opts)
map("n", "<Leader>g", ":Telescope live_grep<CR>", opts)
