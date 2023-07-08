-- setting the leader key to space
vim.g.mapleader = " "
-- while in normal mode, if i press leader key (space) followed by pv, vim.cmd.Ex will be executed
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-h>', ':bprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '[b', ':bprevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bb', ':b#<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>`', ':b#<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', '<esc>', '<esc>:nohlsearch<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<esc>', ':nohlsearch<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ur', ':redraw!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gw', '*N', { noremap = true })
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<C-o>:w<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':w<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>l', ':LazyGit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fn', ':enew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>xl', ':lopen<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>xq', ':copen<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>uf', ':FormatToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>us', ':setlocal spell!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>uw', ':set wrap!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ul', ':set number!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ud', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>uc', ':set conceallevel=2<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>uh', ':lua vim.lsp.buf.incoming_calls()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>gG', ':LazyGit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ui', ':lua print(vim.inspect(vim.api.nvim_win_get_cursor(0)))<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':terminal<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fT', ':terminal<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-/>', ':terminal<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-\\>', ':<C-u>which_key_ignore<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<esc><esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-/>', '<C-\\><C-n>:q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ww', '<C-w>w', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wd', '<C-w>c', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w-', ':split<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w|', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':split<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>|', ':vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>l', ':tablast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>f', ':tabfirst<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab><tab>', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>]', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>d', ':tabclose<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><tab>[', ':tabprevious<CR>', { noremap = true })

-- bufferline.nvim
vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferLinePick<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bP', ':BufferLineCloseBuffersRight<CR>', { noremap = true, silent = true })

-- flit.nvim
-- vim.api.nvim_set_keymap('n', 'f', ':<C-u>Flit<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'F', ':<C-u>Flit!<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 't', ':<C-u>FlitTab<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'T', ':<C-u>FlitTab!<CR>', { noremap = true, silent = true })

-- leap.nvim
-- vim.api.nvim_set_keymap('n', 's', ':Leap<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'S', ':LeapBack<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gs', ':LeapFromWindows<CR>', { noremap = true, silent = true })

-- mason.nvim
vim.api.nvim_set_keymap('n', '<leader>cm', ':Mason<CR>', { noremap = true, silent = true })

-- neo-tree.nvim
-- vim.api.nvim_set_keymap('n', '<leader>fe', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fE', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>E', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })

-- noice.nvim
-- vim.api.nvim_set_keymap('c', '<S-Enter>', ':NoiceRedirectCmdline<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>snl', ':NoiceLast<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>snh', ':NoiceHistory<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>sna', ':NoiceAll<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>snd', ':NoiceDismissAll<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<C-f>', '<C-f>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-f>', '<C-f>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('s', '<C-f>', '<C-f>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-b>', '<C-b>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('s', '<C-b>', '<C-b>', { noremap = true, silent = true })

-- nvim-notify
-- vim.api.nvim_set_keymap('n', '<leader>un', ':NotifyClear<CR>', { noremap = true, silent = true })

-- -- nvim-spectre
-- vim.api.nvim_set_keymap('n', '<leader>sr', ':lua require("spectre").open()<CR>', { noremap = true, silent = true })

-- nvim-treesitter
vim.api.nvim_set_keymap('n', '<C-Space>', ':lua require("nvim-treesitter.selectors").increment_selection()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<BS>', ':lua require("nvim-treesitter.selectors").decrement_selection()<CR>', { noremap = true, silent = true })

-- persistence.nvim
-- vim.api.nvim_set_keymap('n', '<leader>qs', ':lua require("persistence").load()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ql', ':lua require("persistence").load_last()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>qd', ':lua require("persistence").stop()<CR>', { noremap = true, silent = true })

-- telescope.nvim
vim.api.nvim_set_keymap('n', '<leader>,', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>Telescope grep_string<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>:', '<cmd>Telescope command_history<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><space>', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fF', '<cmd>Telescope find_files cwd=<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fR', '<cmd>Telescope oldfiles cwd=<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Telescope git_status<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sa', '<cmd>Telescope autocommands<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sc', '<cmd>Telescope command_history<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sC', '<cmd>Telescope commands<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd', '<cmd>Telescope lsp_document_diagnostics<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sD', '<cmd>Telescope lsp_workspace_diagnostics<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sg', '<cmd>Telescope grep_string<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sG', '<cmd>Telescope grep_string cwd=<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sH', '<cmd>Telescope highlights<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sk', '<cmd>Telescope keymaps<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sM', '<cmd>Telescope man_pages<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sm', '<cmd>Telescope marks<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so', '<cmd>Telescope options<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sR', '<cmd>Telescope resume<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sw', '<cmd>Telescope grep_string word=\\<\\><cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sW', '<cmd>Telescope grep_string word=\\<\\> cwd=<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>uC', '<cmd>Telescope colorscheme<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ss', '<cmd>Telescope lsp_document_symbols<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sS', '<cmd>Telescope lsp_workspace_symbols<cr>', { noremap = true, silent = true })

-- fugitive
vim.keymap.set("n", "<leader>GS", vim.cmd.Git)

-- undotree
vim.keymap.set("n", "<leader>UT", vim.cmd.UndotreeToggle)

-- todo-comments.nvim
vim.api.nvim_set_keymap('n', ']t', '<cmd>TodoTelescope next<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[t', '<cmd>TodoTelescope prev<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>xt', '<cmd>Trouble todo<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>xT', '<cmd>Trouble todo<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', '<cmd>TodoTelescope<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sT', '<cmd>TodoTelescope<cr>', { noremap = true, silent = true })

-- trouble.nvim
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- vim-illuminate
-- vim.api.nvim_set_keymap('n', ']]', '<cmd>IlluminateNext<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '[[', '<cmd>IlluminatePrev<cr>', { noremap = true, silent = true })

-- -- yanky.nvim
-- vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("yanky").open()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'y', 'y', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'p', 'p', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'P', 'P', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua require("yanky").paste_after()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require("yanky").paste_before()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '[y', '<cmd>lua require("yanky").cycle(-1)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', ']y', '<cmd>lua require("yanky").cycle(1)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', ']p', '<cmd>lua require("yanky").paste_after(true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '[p', '<cmd>lua require("yanky").paste_before(true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', ']P', '<cmd>lua require("yanky").paste_after(true, true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '[P', '<cmd>lua require("yanky").paste_before(true, true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '>p', '<cmd>lua require("yanky").indent_right()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<p', '<cmd>lua require("yanky").indent_left()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '>P', '<cmd>lua require("yanky").indent_right(true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<P', '<cmd>lua require("yanky").indent_left(true)<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '=p', '<cmd>lua require("yanky").filter()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '=P', '<cmd>lua require("yanky").filter(true)<cr>', { noremap = true, silent = true })

-- -- nvim-dap
-- vim.api.nvim_set_keymap('n', '<leader>dB', '<cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Breakpoint condition: "))<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dc', '<cmd>lua require("dap").continue()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dC', '<cmd>lua require("dap").run_to_cursor()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dg', '<cmd>lua require("dap").repl.open()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>di', '<cmd>lua require("dap").step_into()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dj', '<cmd>lua require("dap").down()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dk', '<cmd>lua require("dap").up()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dl', '<cmd>lua require("dap").run_last()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua require("dap").step_out()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dO', '<cmd>lua require("dap").step_over()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua require("dap").pause()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dr', '<cmd>lua require("dapui").toggle()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ds', '<cmd>lua require("dap").repl.run_last()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dt', '<cmd>lua require("dap").disconnect()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dw', '<cmd>lua require("dapui").widgets()<cr>', { noremap = true, silent = true })

-- -- nvim-dap-ui
-- vim.api.nvim_set_keymap('n', '<leader>du', '<cmd>lua require("dapui").toggle()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>de', '<cmd>lua require("dapui").eval()<cr>', { noremap = true, silent = true })

-- -- one-small-step-for-vimkind
-- vim.api.nvim_set_keymap('n', '<leader>daL', '<cmd>lua require("ossv.nlua").start()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>dal', '<cmd>lua require("ossv.nlua").start()<cr>', { noremap = true, silent = true })

-- flash.nvim
-- vim.api.nvim_set_keymap('n', 's', '<cmd>lua require("flash").flash()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'S', '<cmd>lua require("flash").flash_ts()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('o', 's', '<cmd>lua require("flash").flash()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('o', 'S', '<cmd>lua require("flash").flash_ts()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('x', 's', '<cmd>lua require("flash").flash()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('x', 'S', '<cmd>lua require("flash").flash_ts()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('o', 's', '<cmd>lua require("flash").flash()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('o', 'S', '<cmd>lua require("flash").flash_ts()<cr>', { noremap = true, silent = true })

-- neotest
-- vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_file()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>tT', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_all_test_files()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>tr', '<cmd>lua require("lazyvim.plugins.extras.test.core").run_nearest()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ts', '<cmd>lua require("lazyvim.plugins.extras.test.core").toggle_summary()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>lua require("lazyvim.plugins.extras.test.core").show_output()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>tO', '<cmd>lua require("lazyvim.plugins.extras.test.core").toggle_output_panel()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>tS', '<cmd>lua require("lazyvim.plugins.extras.test.core").stop()<cr>', { noremap = true, silent = true })

-- nvim-dap
-- vim.api.nvim_set_keymap('n', '<leader>td', '<cmd>lua require("lazyvim.plugins.extras.edtest.core").debug_nearest()<cr>', { noremap = true, silent = true })

-- -- edgy.nvim
-- vim.api.nvim_set_keymap('n', '<leader>ue', '<cmd>lua require("lazyvim.plugins.extras.ui.edgy").toggle()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>uE', '<cmd>lua require("lazyvim.plugins.extras.ui.edgy").select_window()<cr>', { noremap = true, silent = true })

-- -- project.nvim
-- vim.api.nvim_set_keymap('n', '<leader>fp', '<cmd>lua require("lazyvim.plugins.extras.util.project").projects()<cr>', { noremap = true, silent = true })

-- mini.surround
-- vim.api.nvim_set_keymap('n', 'gza', ':<C-u>MiniSurroundAdd<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', 'gza', ':<C-u>MiniSurroundAdd<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzd', ':<C-u>MiniSurroundDelete<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzf', ':<C-u>MiniSurroundFindRight<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzF', ':<C-u>MiniSurroundFindLeft<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzh', ':<C-u>MiniSurroundHighlight<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzr', ':<C-u>MiniSurroundReplace<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gzn', ':<C-u>MiniSurroundUpdateConfig<CR>', { noremap = true, silent = true })

-- mini.bufremove
-- vim.api.nvim_set_keymap('n', '<leader>bd', ':Bdelete<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>bD', ':Bdelete!<CR>', { noremap = true, silent = true })

-- mini.files
-- vim.api.nvim_set_keymap('n', '<leader>ff', ':MiniFiles<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fg', ':MiniGrep<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fh', ':MiniHistory<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fl', ':MiniLines<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fm', ':MiniMarks<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fn', ':MiniNotes<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fr', ':MiniRegisters<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>fs', ':MiniSearch<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ft', ':MiniTags<CR>', { noremap = true, silent = true })