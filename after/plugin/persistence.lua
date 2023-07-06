vim.api.nvim_set_keymap('n', '<leader>qs', ':lua require("persistence").load()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ql', ':lua require("persistence").load_last()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qd', ':lua require("persistence").stop()<CR>', { noremap = true, silent = true })