vim.api.nvim_set_keymap('n', 'f', ':<C-u>Flit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'F', ':<C-u>Flit!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 't', ':<C-u>FlitTab<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'T', ':<C-u>FlitTab!<CR>', { noremap = true, silent = true })