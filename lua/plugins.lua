local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- After each update run these commands:
--
--
--

return require('packer').startup(function(use)

	-- GOD TIER PLUGINS
	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- LEGENDARY TIER PLUGINS
	use{
		'neovim/nvim-lspconfig'
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use{
		'neoclide/coc.nvim',
		branch = 'master',
		run = 'yarn install --frozen-lockfile',
		requires = {
			{'dense-analysis/ale'},
			{'neovim/nvim-lspconfig'}
		}
	}

	-- #### Unessasary / Cool stuff :D ####
	
	-- Visual Line
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)