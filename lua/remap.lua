vim.keymap.set("n", "<C-a>", vim.cmd.bprevious)
vim.keymap.set("n", "<C-d>", vim.cmd.bnext)
vim.keymap.set("n", "<C-h>", vim.cmd.nohlsearch)
vim.keymap.set("n", "<leader>w", "<cmd>bdelete<Return><cmd>bnext<Return>")

