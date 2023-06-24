-- setting the leader key to space
vim.g.mapleader = " "
-- while in normal mode, if i press leader key (space) followed by pv, vim.cmd.Ex will be executed
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
