return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs", -- Use tabs instead of buffers
			separator_style = "slope", -- Custom separator style
			max_name_length = 16,
			tab_size = 25,
			always_show_bufferline = true, -- Show even if only one tab
			show_close_icon = false, -- Hide close icon

			diagnostics = "nvim_lsp", --Fix it mate
			diagnostics_update_on_event = true, -- Use nvim's diagnostic handler
			diagnostics_indicator = function(count, level)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,

			numbers = "ordinal", -- Show numbers on tabs
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true,
					text_align = "left",
				},
			},
			indicator = {
				icon = " x ",
				style = "icon",
			},
		},
	},
}
