return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function()
      require("configs.nvim-treesitter")
    end,
  })

  use({
		'ms-jpq/coq_nvim',
		branch = 'coq',
		config = function()
			require("configs.coq_nvim")
	  end,
	})

  use({
    'neovim/nvim-lspconfig',
    config = function()
      require("configs.lspconfig")
    end
  })

	use({
		'mickael-menu/zk-nvim',
		config = function()
			require("configs.zk-nvim")
		end,
	})

  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

  use { "catppuccin/nvim", as = "catppuccin" }
 end)
