 return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        {'nvim-lua/plenary.nvim'},
    },
    config = function()

        local telescope = require("telescope")
        local actions = require("telescope.actions")

       
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
    
        keymap.set("n", "ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    end,
 }