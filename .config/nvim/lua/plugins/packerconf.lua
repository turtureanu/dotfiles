return require('packer').startup(function()

    -- Packer | Plugin manager
    use "wbthomason/packer.nvim"

    -- NvimTree | File explorer
    use {
	'kyazdani42/nvim-tree.lua',

        requires = {
	    'kyazdani42/nvim-web-devicons',
	},
    }

    -- Nvim colorizer | Colorize color values
    use 'norcalli/nvim-colorizer.lua'

    -- Nord theme
    use 'shaunsingh/nord.nvim'

    -- Indent Blankline | Indent guides
    use {
	'lukas-reineke/indent-blankline.nvim',
	requires = {
	    'nvim-treesitter/nvim-treesitter',
	    branch = '0.5-compat',
	    run = ':TSUpdate'
	}
    }

    -- Rainbow | Bracket pair colorizer
    use 'luochen1990/rainbow'
    
    -- Git plugin
    use {
      'tanvirtin/vgit.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      }
    }

    -- Conquerer of Completion
    use {
      'neoclide/coc.nvim',
      branch = 'release'
    }
    -- Nvim Autopairs
    use {
	"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
    }

    -- Terminal extension
    use {
      "akinsho/toggleterm.nvim",
      tag = 'v1.*',
      config = function()
	require("toggleterm").setup()
      end
    }
end)
