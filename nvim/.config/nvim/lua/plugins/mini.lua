return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.diff").setup()
	end,
}
