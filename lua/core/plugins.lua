require('plugin')
require('lsp')

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'RRethy/nvim-base16'
  use {
      "ellisonleao/gruvbox.nvim",
      requires = {"rktjmp/lush.nvim"}
  }
  -- tree
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' }
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'

  -- terminal
  use {'akinsho/toggleterm.nvim', tag = 'v1.*'}
  -- autopairs
  use 'windwp/nvim-autopairs'
  -- mutiple cursors
  use {'mg979/vim-visual-multi',branch = 'master'}
  --comment
  use 'numToStr/Comment.nvim'
  -- surround
  use 'tpope/vim-surround'
  -- notify
  use 'rcarriga/nvim-notify'
  -- lua line
  use 'nvim-lualine/lualine.nvim'

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'
end)
