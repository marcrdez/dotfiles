-- When in visual mode this allows to move lines up and down
vim.keymap.set({ "n", "v" }, "<M-Up>", ":m -2<CR>", { desc = "Move the line above" })
vim.keymap.set({ "n", "v" }, "<M-k>", ":m -2<CR>", { desc = "Move the line above" })
vim.keymap.set({ "n", "v" }, "<M-Down>", ":m +1<CR>", { desc = "Move the line below" })
vim.keymap.set({ "n", "v" }, "<M-j>", ":m +1<CR>", { desc = "Move the line below" })
