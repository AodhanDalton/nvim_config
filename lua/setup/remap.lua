vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", "<C-w>")

-- Run python script
vim.keymap.set('n', '<leader>rp', ':w<cr>:lua run_python_script()<cr>')

