local options = {noremap = true, silent = true}

-- Window navigation
	vim.keymap.set('n', '<C-h>', '<C-w>h', options)
	vim.keymap.set('n', '<C-j>', '<C-w>j', options)
	vim.keymap.set('n', '<C-k>', '<C-w>k', options)
	vim.keymap.set('n', '<C-l>', '<C-w>l', options)

-- Resize with arrows
	vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', options)
	vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', options)
	vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', options)
	vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', options)

-- Nvimtree
	vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', options)

-- Toggle terminal 
	vim.keymap.set('n', '<C-t>', ':botright split term://bash<CR>', options)

-- Buffers
	vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', options)
	vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', options)
	-- Saving and closing
		vim.keymap.set('n', '<C-w>', ':w! | mkview | Bdelete!<CR>', options)

-- Folding
	vim.keymap.set('n', '<CR>', ':foldopen<CR>', options)

-- Formatting
	function range_format()
		vim.lsp.buf.format({
			async = true,
			range = {
				['start'] = vim.api.nvim_buf_get_mark(0, '<'),
				['end'] = vim.api.nvim_buf_get_mark(0, '>'),
			}
		})
	end

	vim.keymap.set('v', '<C-f>', ':lua range_format()<CR>', options)
