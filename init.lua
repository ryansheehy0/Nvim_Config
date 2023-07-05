---@diagnostic disable: undefined-global
require('plugins')
require('keyboard_shortcuts')
require('color_scheme')
require('plugin_config')

-- Basic Settings
	-- line numbers
		vim.opt.number = true
	-- syntax highlighting
		vim.cmd('syntax on')
	-- set termguicolors
		vim.opt.termguicolors = true
	-- folding method
		vim.wo.foldmethod = 'indent'
		vim.o.foldlevel = 99
	-- remove comment continuation. When hitting enter it automaticaaly puts a comment if the line had a comment.
		vim.api.nvim_create_autocmd('BufEnter', {
			callback = function()
				vim.opt.formatoptions:remove { 'c', 'r', 'o' }
			end,
			desc = '',
		})
	-- tabs/indentation
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.expandtab = true -- Use spaces instead of tab characters
	-- Auto scrolls when there are 8 lines ontop or below the cursor
		vim.o.scrolloff = 8
	-- No swap files
		vim.opt.backup = false
		vim.opt.writebackup = false
		vim.opt.swapfile = false
	-- Smart indent
		vim.opt.smartindent = true
	-- Open with folds
		vim.api.nvim_create_autocmd('BufEnter', {
			callback = function()
				vim.cmd(':silent! loadview')
			end,
			desc = '',
		})
	-- Highlighting when searching
		 vim.opt.hlsearch = true
		 vim.opt.incsearch = true
	-- When in insert mode keep the left column for errors and warnings
		 vim.opt.signcolumn = 'yes'
	-- The length of time Nvim waits after you stop typing before it triggers a plugin. In milliseconds
		 vim.opt.updatetime = 100
	-- Spell checker
		vim.o.spell = true
