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
  use 'hrsh7th/nvim-cmp'            -- completion
  use 'hrsh7th/cmp-buffer'          -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'        -- nvim-cmp source for neovim's built in LSP

  use 'L3MON4D3/LuaSnip'                    -- Snippet engine
  use 'williamboman/nvim-lsp-installer'     -- LSP Installer
  use 'williamboman/mason.nvim'             -- More LSP installations 
  use 'williamboman/mason-lspconfig.nvim'   -- Extra LSP Snippets
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim.treesitter.install').update ({ with_sync = true }) end,
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or , brand = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim'} }
  }
  use 'theprimeagen/harpoon'        -- Quick switching between files
end)
