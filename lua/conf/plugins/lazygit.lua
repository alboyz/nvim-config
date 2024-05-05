return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").load_extension("lazygit")
	end,
	keys = {
		{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
	},
}
