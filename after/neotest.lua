vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_file()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tT', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_all_test_files()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_nearest()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ts', '<cmd>lua require("lazyvim.plugins.extras.test.core").toggle_summary()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>lua require("lazyvim.plugins.extras.test.core").show_output()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tO', '<cmd>lua require("lazyvim.plugins.extras.test.core").toggle_output_panel()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tS', '<cmd>lua require("lazyvim.plugins.extras.test.core").stop()<cr>', { noremap = true, silent = true })