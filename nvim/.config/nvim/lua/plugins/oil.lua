return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
			},
			view_options = {
				show_hidden = true,
			},

			float = {
				padding = 2,
				max_width = 0.8,
				max_height = 0.8,
				border = "rounded",
			},
		})
		vim.keymap.set("n", "<leader>e", require("oil").toggle_float)
		vim.keymap.set("n", "<leader>oh", require("oil").toggle_hidden)
	end,
}
