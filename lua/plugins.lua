local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Plugins
		use 'nvim-tree/nvim-web-devicons'
		use 'nvim-tree/nvim-tree.lua'
		use 'nvim-treesitter/nvim-treesitter'
		use 'akinsho/bufferline.nvim'
		use 'moll/vim-bbye'
		use 'lukas-reineke/indent-blankline.nvim'
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v2.x',
			requires = {
				{'neovim/nvim-lspconfig'},
				{
					'williamboman/mason.nvim',
					run = function()
						pcall(vim.cmd, 'MasonUpdate')
					end,
				},
				{'williamboman/mason-lspconfig.nvim'}, -- Optional

				-- Autocompletion
				{'hrsh7th/nvim-cmp'},     -- Required
				{'hrsh7th/cmp-nvim-lsp'}, -- Required
				{'L3MON4D3/LuaSnip'},     -- Required
			}
		}
		use 'dhruvasagar/vim-table-mode'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
