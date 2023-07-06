vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("yanky").open()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'y', 'y', { noremap = true })
vim.api.nvim_set_keymap('n', 'p', 'p', { noremap = true })
vim.api.nvim_set_keymap('n', 'P', 'P', { noremap = true })
vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua require("yanky").paste_after()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require("yanky").paste_before()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[y', '<cmd>lua require("yanky").cycle(-1)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']y', '<cmd>lua require("yanky").cycle(1)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']p', '<cmd>lua require("yanky").paste_after(true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[p', '<cmd>lua require("yanky").paste_before(true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']P', '<cmd>lua require("yanky").paste_after(true, true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[P', '<cmd>lua require("yanky").paste_before(true, true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '>p', '<cmd>lua require("yanky").indent_right()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<p', '<cmd>lua require("yanky").indent_left()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '>P', '<cmd>lua require("yanky").indent_right(true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<P', '<cmd>lua require("yanky").indent_left(true)<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '=p', '<cmd>lua require("yanky").filter()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '=P', '<cmd>lua require("yanky").filter(true)<cr>', { noremap = true, silent = true })