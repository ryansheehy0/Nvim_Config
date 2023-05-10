local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
	return
end

bufferline.setup {
	options = {
		numbers = 'none',
		close_command = 'Bdelete! %d',
		right_mouse_command = nil,
		left_mouse_command = 'buffer %d',
		middle_mouse_command = nil,
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = false,
		diagnostics_update_in_insert = false,
		offsets = { { filetype = 'NvimTree', text = '', separator = true , highlight = 'normal' } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = {'│' , '│'},
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		style_preset = {
			bufferline.style_preset.no_italic,
			bufferline.style_preset.no_bold
		},
	},
}
