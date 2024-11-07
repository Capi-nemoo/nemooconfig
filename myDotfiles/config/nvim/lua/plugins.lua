-- ~/.config/nvim/lua/plugins.lua

-- Auto-instalar Packer si no está instalado
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Iniciar Packer y especificar los plugins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer se gestiona a sí mismo

  -- Lista de plugins
  use 'nvim-lua/plenary.nvim' -- Funciones Lua utilizadas por muchos plugins
  use 'morhetz/gruvbox' -- Tema Gruvbox
  use 'nvim-lualine/lualine.nvim' -- Barra de estado
  use 'kyazdani42/nvim-tree.lua' -- Explorador de archivos
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  } -- Resaltado de sintaxis avanzado
  use 'hrsh7th/nvim-cmp' -- Autocompletado
  use 'hrsh7th/cmp-nvim-lsp' -- Fuente de autocompletado para LSP
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'saadparwaiz1/cmp_luasnip' -- Fuente de autocompletado para snippets
  use 'neovim/nvim-lspconfig' -- Soporte LSP
  use 'nvim-telescope/telescope.nvim' -- Búsqueda avanzada

  -- Instalar automáticamente los plugins si es la primera vez
  if packer_bootstrap then
    require('packer').sync()
  end
end)
