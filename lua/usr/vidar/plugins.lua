local fn = vim.fn



-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here | syntax: use {"github-plugin", additionalParams = {...}, ...}
return packer.startup(function(use)

  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- Themes
  use "ryanoasis/vim-devicons" -- Devicons
  use "folke/tokyonight.nvim" -- THEME

  -- Fuzzy finder
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }}

  -- Completions/cmp
 use {
  'hrsh7th/nvim-cmp',
  config = function ()
    require'cmp'.setup {
    snippet = {
      expand = function(args)
	require'luasnip'.lsp_expand(args.body)
      end
    },

    sources = {
      { name = 'luasnip' },
      -- more sources
    },
  }
  end
}
 use "hrsh7th/cmp-buffer" -- buffer completions
 use "hrsh7th/cmp-path" -- path completions
 use "hrsh7th/cmp-cmdline" -- cmdline completions
 use "hrsh7th/cmp-nvim-lsp" -- cmp for lsp support
use { 'saadparwaiz1/cmp_luasnip' } -- cmp for luasnippets

 -- LSP
 use 'neovim/nvim-lspconfig'

 -- Fileexplorer
 use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

