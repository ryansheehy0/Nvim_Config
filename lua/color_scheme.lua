local colors = {
	black = '#000000',
	white = '#ffffff',
	orange = '#ce9178',
	red = '#f43729',
	green = '#6a9955',
	blue = '#5499d1',
	light_blue = '#9bdafb',
	yellow = '#ffff00',
	light_yellow = '#dcdcaa',
	purple = '#c385be',
	gray = '#969696',
	dark_gray = '#353535', -- For popup backgrounds
}

vim.o.termguicolors = true

vim.cmd('highlight Normal guibg=' .. colors.black .. ' guifg=' .. colors.white)
-- Specific color settings
	vim.cmd('highlight LineNr guifg=' .. colors.white)
	vim.cmd('highlight EndOfBuffer guifg=' .. colors.white)

-- Coding color settings
	vim.cmd('highlight Comment guifg=' .. colors.green)
	vim.cmd('highlight Constant guifg=' .. colors.orange) -- Such as numbers and string literals
	vim.cmd('highlight Statement guifg=' .. colors.purple) -- keywords like if, while, for, etc.
	vim.cmd('highlight Type guifg=' .. colors.blue) -- data types like int, float, char, etc.
	vim.cmd('highlight PreProc guifg=' .. colors.purple) -- preprocessor directives like #include or #define
	vim.cmd('highlight Function guifg=' .. colors.light_yellow)
	vim.cmd('highlight Special guifg=' .. colors.yellow)
	vim.cmd('highlight Variable guifg=' .. colors.light_blue)
	vim.cmd('highlight Operator guifg=' .. colors.white)
-- Nvimtree
	vim.cmd('highlight NvimTreeFolderName guifg=' .. colors.white)
	vim.cmd('highlight NvimTreeOpenedFolderName guifg=' .. colors.white)
	vim.cmd('highlight NvimTreeRootFolder guifg=' .. colors.white)
	vim.cmd('highlight NvimTreeEmptyFolderName guifg=' .. colors.white)
	-- Nvimtree files
		vim.cmd('highlight NvimTreeFileDeleted guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileDirty guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileIgnored guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileMerge guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileNew guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileRenamed guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeFileStaged guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeExecFile guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeImageFile guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeModifiedFile guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeOpenedFile guifg=' .. colors.white)
		vim.cmd('highlight NvimTreeSpecialFile guifg=' .. colors.white)
-- Bufferline
	vim.cmd('highlight BufferLineBackground guifg=' .. colors.gray)
	vim.cmd('highlight BufferLineSeparator guifg=' .. colors.white)
	vim.cmd('highlight BufferLineBufferVisible guifg=' .. colors.white)
	vim.cmd('highlight Folded guibg=' .. colors.black .. ' guifg=' .. colors.white)
-- Indent Blank Line
	vim.cmd('highlight IndentBlanklineChar guifg=' .. colors.gray .. ' guibg=' .. colors.black)
	vim.cmd('highlight IndentBlanklineSpaceChar guifg=' .. colors.gray)
-- Sign Column. The Column on the side that shows errors and warnings
	vim.cmd('highlight SignColumn guibg=' .. colors.black)
-- Mason
	vim.cmd('highlight MasonNormal guibg=' .. colors.dark_gray .. ' guifg=' .. colors.white)
-- Popups
	vim.cmd('highlight Pmenu guibg=' .. colors.dark_gray)
