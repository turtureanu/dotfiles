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
end)
