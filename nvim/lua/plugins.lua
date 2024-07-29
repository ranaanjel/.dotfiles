local status, packer = pcall(require, "packer")
if (not status) then
	print("packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function (use)

	use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'

	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}

  use 'L3MON4D3/LuaSnip' -- snippet

  use {
	'nvim-treesitter/nvim-treesitter',
	run = ":TSUpdate"
} 
  use "nvim-treesitter/playground"
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

  use 'norcalli/nvim-colorizer.lua'
--  use 'hoob3rt/lualine.nvim' -- status line
  use 'neovim/nvim-lspconfig' -- LSP config
  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/cmp-buffer' --nvim-cmp soruce for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- completion

--  use 'nvimdev/lspsaga.nvim'
        use ({
                'nvimdev/lspsaga.nvim',
                after = 'nvim-lspconfig',
                config = function()
                        require('lspsaga').setup({})
                end,
        })



  use 'nvim-lua/plenary.nvim' -- Common Utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'akinsho/nvim-bufferline.lua'
  use("jose-elias-alvarez/null-ls.nvim") -- use neovim as a language server to inject LSP diagnostics, code actions and more via lua
  use("MunifTanjim/prettier.nvim") -- prettier plugin for Neovim's builtin LSP client
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

end)
