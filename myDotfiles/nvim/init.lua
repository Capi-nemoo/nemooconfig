-- ~/.config/nvim/init.lua

-- Cargar los plugins desde plugins.lua
require('plugins')
require('lsp')

-- Resto de tu configuración
-- Configuraciones generales
vim.o.termguicolors = true
vim.cmd [[colorscheme gruvbox]]

-- Configuración de lualine
require('lualine').setup {
  options = { theme = 'gruvbox' }
}

-- Configuración de nvim-tree
require('nvim-tree').setup {}

-- Mapear tecla para abrir nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Configuración de Treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "python", "javascript" }, -- Lenguajes a instalar
  highlight = { enable = true },
}


-- Opciones generales
vim.o.number = true        -- Mostrar números de línea
vim.o.relativenumber = true -- Números relativos
vim.o.expandtab = true     -- Convertir tabulaciones en espacios
vim.o.shiftwidth = 2       -- Número de espacios por indentación
vim.o.tabstop = 2          -- Número de espacios que representa una tabulación
vim.o.smartindent = true   -- Indentación inteligente
