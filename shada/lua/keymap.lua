local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

--colon
map("n","<space>",":")
--esc
map ("i","jj","<esc>")

--copy paste
vim.api.nvim_set_keymap("n", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "vv", '"+p', {noremap=true, silent=true})

-- visual  block
vim.api.nvim_set_keymap("n", "pp", "<c-v>", {noremap=true, silent=true})

