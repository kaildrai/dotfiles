local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim'   -- Statusline
  use 'neovim/nvim-lspconfig'       -- LSP
  use 'onsails/lspkind-nvim'        -- LSP VSCode pictograms
  use 'hrsh7th/cmp-buffer'          -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'        -- nvim-cmp source for neovim's built in LSP
  use 'hrsh7th/nvim-cmp'            -- completion
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
end)
