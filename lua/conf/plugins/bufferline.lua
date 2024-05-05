return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup()
		vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<leader>bd", ":BufferLineCycleDelete<CR>")
	end,
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
}
