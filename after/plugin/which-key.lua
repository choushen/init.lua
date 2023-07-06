local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

-- Define your mappings
local mappings = {
    ["<C-h>"] = "Move left",
    ["<C-j>"] = "Move down",
    ["<C-k>"] = "Move up",
    ["<C-l>"] = "Move right",
    ["<C-Up>"] = "Increase window height",
    ["<C-Down>"] = "Decrease window height",
    ["<C-Left>"] = "Decrease window width",
    ["<C-Right>"] = "Increase window width",
    ["<A-j>"] = "Move line down",
    ["<A-k>"] = "Move line up",
    ["<S-h>"] = "Previous buffer",
    ["<S-l>"] = "Next buffer",
    ["[b"] = "Previous buffer",
    ["]b"] = "Next buffer",
    ["<leader>bb"] = "Last buffer",
    ["<leader>`"] = "Last buffer",
    ["<esc>"] = "Clear search highlight",
    ["<leader>ur"] = "Redraw screen",
    ["gw"] = "Search for word under cursor",
    ["n"] = "Next search result",
    ["N"] = "Previous search result",
    ["<C-s>"] = "Save file in insert mode",
    ["<leader>l"] = "Open LazyGit",
    ["<leader>fn"] = "New file",
    ["<leader>xl"] = "Open location list",
    ["<leader>xq"] = "Open quickfix list",
    ["<leader>uf"] = "Toggle formatting",
    ["<leader>us"] = "Toggle spellcheck",
    ["<leader>uw"] = "Toggle line wrap",
    ["<leader>ul"] = "Toggle line numbers",
    ["<leader>ud"] = "Show line diagnostics",
    ["<leader>uc"] = "Toggle conceal level",
    ["<leader>uh"] = "Show incoming calls",
    ["<leader>gg"] = "Open LazyGit",
    ["<leader>gG"] = "Open LazyGit",
    ["<leader>qq"] = "Quit all",
    ["<leader>ui"] = "Print cursor position",
    ["<leader>ft"] = "Open terminal",
    ["<leader>fT"] = "Open terminal",
    ["<C-/>"] = "Open terminal",
    ["<c-\\>"] = "Ignore WhichKey",
    ["<leader>ww"] = "Next window",
    ["<leader>wd"] = "Close window",
    ["<leader>w-"] = "Split window horizontally",
    ["<leader>w|"] = "Split window vertically",
    ["<leader>-"] = "Split window horizontally",
    ["<leader>|"] = "Split window vertically",
    ["<leader><tab>l"] = "Last tab",
    ["<leader><tab>f"] = "First tab",
    ["<leader><tab><tab>"] = "New tab",
    ["<leader><tab>]"] = "Next tab",
    ["<leader><tab>d"] = "Close tab",
    ["<leader><tab>["] = "Previous tab",
    -- ["bp"] = { "<cmd>BufferLinePick<cr>", "Pick buffer from list" },
    -- ["bP"] = { "<cmd>BufferLineCloseBuffersRight<cr>", "Close all buffers to the right" },
    -- ["f"] = { "<cmd>Flit<cr>", "Find text" },
    -- ["F"] = { "<cmd>Flit!<cr>", "Find text (whole word)" },
    -- ["t"] = { "<cmd>FlitTab<cr>", "Find text in new tab" },
    -- ["T"] = { "<cmd>FlitTab!<cr>", "Find text in new tab (whole word)" },
    -- ["s"] = { "<cmd>Leap<cr>", "Leap to next match" },
    -- ["S"] = { "<cmd>LeapBack<cr>", "Leap to previous match" },
    -- ["gs"] = { "<cmd>LeapFromWindows<cr>", "Leap from all windows" },
    -- ["cm"] = { "<cmd>Mason<cr>", "Run Mason" },
    -- ["bd"] = { "<cmd>Bdelete<cr>", "Delete buffer" },
    -- ["bD"] = { "<cmd>Bdelete!<cr>", "Delete all buffers" },
    -- ["gza"] = { "<cmd>MiniSurroundAdd<cr>", "Add surround" },
    -- ["gzd"] = { "<cmd>MiniSurroundDelete<cr>", "Delete surround" },
    -- ["gzf"] = { "<cmd>MiniSurroundFindRight<cr>", "Find right surround" },
    -- ["gzF"] = { "<cmd>MiniSurroundFindLeft<cr>", "Find left surround" },
    -- ["gzh"] = { "<cmd>MiniSurroundHighlight<cr>", "Highlight surround" },
    -- ["gzr"] = { "<cmd>MiniSurroundReplace<cr>", "Replace surround" },
    -- ["gzn"] = { "<cmd>MiniSurroundUpdateConfig<cr>", "Update surround config" },
    -- ["fe"] = { "<cmd>NeoTreeFindFile<cr>", "Find file in file explorer" },
    -- ["fE"] = { "<cmd>NeoTreeFindFile<cr>", "Find file in file explorer" },
    -- ["e"] = { "<cmd>NeoTreeToggle<cr>", "Toggle file explorer" },
    -- ["E"] = { "<cmd>NeoTreeToggle<cr>", "Toggle file explorer" },
    -- ["snl"] = { "<cmd>NoiceLast<cr>", "Show last search results" },
    -- ["snh"] = { "<cmd>NoiceHistory<cr>", "Show search history" },
    -- ["sna"] = { "<cmd>NoiceAll<cr>", "Show all search results" },
    -- ["snd"] = { "<cmd>NoiceDismissAll<cr>", "Dismiss all search results" },
    -- ["un"] = { "<cmd>NotifyClear<cr>", "Clear notifications" },
    -- ["sr"] = { "<cmd>lua require('spectre').open()<cr>", "Search and replace" },
    -- ["qs"] = { "<cmd>lua require('persistence').load()<cr>", "Load session" },
    -- ["ql"] = { "<cmd>lua require('persistence').load_last()<cr>", "Load last session" },
    -- ["qd"] = { "<cmd>lua require('persistence').stop()<cr>", "Stop persistence" },
    -- ["<C-Space>"] = { "<cmd>lua require('nvim-treesitter.selectors').increment_selection()<cr>", "Increment selection" },
    -- ["<BS>"] = { "<cmd>lua require('nvim-treesitter.selectors').decrement_selection()<cr>", "Decrement selection" },
    -- [","] = { "<cmd>Telescope buffers<cr>", "Find buffer" },
    -- ["/"] = { "<cmd>Telescope grep_string<cr>", "Search in files" },
    -- [":"] = { "<cmd>Telescope command_history<cr>", "Command history" },
    -- ["<space>"] = { "<cmd>Telescope find_files<cr>", "Find file" },
    -- ["fb"] = { "<cmd>Telescope buffers<cr>", "Find buffer" },
    -- ["ff"] = { "<cmd>Telescope find_files<cr>", "Find file" },
    -- ["fF"] = { "<cmd>Telescope find_files cwd=<cr>", "Find file in cwd" },
    -- ["fr"] = { "<cmd>Telescope oldfiles<cr>", "Open recent file" },
    -- ["fR"] = { "<cmd>Telescope oldfiles cwd=<cr>", "Open recent file in cwd" },
    -- ["gc"] = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    -- ["gs"] = { "<cmd>Telescope git_status<cr>", "Git status" },
    -- ["sa"] = { "<cmd>Telescope autocommands<cr>", "Autocommands" },
    -- ["sb"] = { "<cmd>Telescope buffers<cr>", "Find buffer" },
    -- ["sc"] = { "<cmd>Telescope command_history<cr>", "Command history" },
    -- ["sC"] = { "<cmd>Telescope commands<cr>", "Commands" },
    -- ["sd"] = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Document diagnostics" },
    -- ["sD"] = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace diagnostics" },
    -- ["sg"] = { "<cmd>Telescope grep_string<cr>", "Search in files" },
    -- ["sG"] = { "<cmd>Telescope grep_string cwd=<cr>", "Search in cwd" },
    -- ["sh"] = { "<cmd>Telescope help_tags<cr>", "Help tags" },
    -- ["sH"] = { "<cmd>Telescope highlights<cr>", "Highlights" },
    -- ["sk"] = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    -- ["sM"] = { "<cmd>Telescope man_pages<cr>", "Man pages" },
    -- ["sm"] = { "<cmd>Telescope marks<cr>", "Marks" },
    -- ["so"] = { "<cmd>Telescope options<cr>", "Options" },
    -- ["sR"] = { "<cmd>Telescope resume<cr>", "Resume last search" },
    -- ["sw"] = { "<cmd>Telescope grep_string word=\\<\\><cr>", "Search for word under cursor" },
    -- ["sW"] = { "<cmd>Telescope grep_string word=\\<\\> cwd=<cr>", "Search for word under cursor in cwd" },
    -- ["uC"] = { "<cmd>Telescope colorscheme<cr>", "Change colorscheme" },
    -- ["ss"] = { "<cmd>Telescope lsp_document_symbols<cr>", "Document symbols" },
    -- ["sS"] = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace symbols" },
    -- ["[t"] = { "<cmd>TodoTelescope prev<cr>", "Previous todo" },
    -- ["]t"] = { "<cmd>TodoTelescope next<cr>", "Next todo" },
    -- ["<leader>xt"] = { "<cmd>Trouble todo<cr>", "List todos" },
    -- ["<leader>xT"] = { "<cmd>Trouble todo<cr>", "List todos" },
    -- ["<leader>st"] = { "<cmd>TodoTelescope<cr>", "Search todos" },
    -- ["<leader>sT"] = { "<cmd>TodoTelescope<cr>", "Search todos" },
    -- ["<leader>xx"] = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "Toggle document diagnostics" },
    -- ["<leader>xX"] = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "Toggle workspace diagnostics" },
    -- ["<leader>xL"] = { "<cmd>TroubleToggle loclist<cr>", "Toggle loclist" },
    -- ["<leader>xQ"] = { "<cmd>TroubleToggle quickfix<cr>", "Toggle quickfix" },
    -- ["[q"] = { "<cmd>TroublePrevious<cr>", "Previous trouble" },
    -- ["]q"] = { "<cmd>TroubleNext<cr>", "Next trouble" },
    -- ["]]"] = { "<cmd>IlluminateNext<cr>", "Next illuminate" },
    -- ["[["] = { "<cmd>IlluminatePrev<cr>", "Previous illuminate" },
    -- ["<leader>p"] = { "<cmd>lua require('yanky').open()<cr>", "Open yank history" },
    -- ["y"] = { "y", "Yank" },
    -- ["p"] = { "p", "Paste after" },
    -- ["P"] = { "P", "Paste before" },
    -- ["gp"] = { "<cmd>lua require('yanky').paste_after()<cr>", "Paste after with indent" },
    -- ["gP"] = { "<cmd>lua require('yanky').paste_before()<cr>", "Paste before with indent" },
    -- ["[y"] = { "<cmd>lua require('yanky').cycle(-1)<cr>", "Previous yank" },
    -- ["]y"] = { "<cmd>lua require('yanky').cycle(1)<cr>", "Next yank" },
    -- ["]p"] = { "<cmd>lua require('yanky').paste_after(true)<cr>", "Paste after with indent and new line" },
    -- ["[p"] = { "<cmd>lua require('yanky').paste_before(true)<cr>", "Paste before with indent and new line" },
    -- ["]P"] = { "<cmd>lua require('yanky').paste_after(true, true)<cr>", "Paste after with indent, new line and autoindent" },
    -- ["[P"] = { "<cmd>lua require('yanky').paste_before(true, true)<cr>", "Paste before with indent, new line and autoindent" },
    -- [">p"] = { "<cmd>lua require('yanky').indent_right()<cr>", "Indent right" },
    -- ["<p"] = { "<cmd>lua require('yanky').indent_left()<cr>", "Indent left" },
    -- [">P"] = { "<cmd>lua require('yanky').indent_right(true)<cr>", "Indent right with autoindent" },
    -- ["<P"] = { "<cmd>lua require('yanky').indent_left(true)<cr>", "Indent left with autoindent" },
    -- ["=p"] = { "<cmd>lua require('yanky').filter()<cr>", "Filter yank history" },
    -- ["=P"] = { "<cmd>lua require('yanky').filter(true)<cr>", "Filter yank history with autoindent" },
    -- ["dB"] = { "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Breakpoint condition: '))<cr>", "Set breakpoint with condition" },
    -- ["db"] = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Toggle breakpoint" },
    -- ["dc"] = { "<cmd>lua require('dap').continue()<cr>", "Continue" },
    -- ["dC"] = { "<cmd>lua require('dap').run_to_cursor()<cr>", "Run to cursor" },
    -- ["dg"] = { "<cmd>lua require('dap').repl.open()<cr>", "Open REPL" },
    -- ["di"] = { "<cmd>lua require('dap').step_into()<cr>", "Step into" },
    -- ["dj"] = { "<cmd>lua require('dap').down()<cr>", "Down" },
    -- ["dk"] = { "<cmd>lua require('dap').up()<cr>", "Up" },
    -- ["dl"] = { "<cmd>lua require('dap').run_last()<cr>", "Run last" },
    -- ["do"] = { "<cmd>lua require('dap').step_out()<cr>", "Step out" },
    -- ["dO"] = { "<cmd>lua require('dap').step_over()<cr>", "Step over" },
    -- ["dp"] = { "<cmd>lua require('dap').pause()<cr>", "Pause" },
    -- ["dr"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle UI" },
    -- ["ds"] = { "<cmd>lua require('dap').repl.run_last()<cr>", "Run last in REPL" },
    -- ["dt"] = { "<cmd>lua require('dap').disconnect()<cr>", "Disconnect" },
    -- ["dw"] = { "<cmd>lua require('dapui').widgets()<cr>", "Toggle widgets" },
    -- ["du"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle UI" },
    -- ["de"] = { "<cmd>lua require('dapui').eval()<cr>", "Evaluate expression" },
    -- ["daL"] = { "<cmd>lua require('ossv.nlua').start()<cr>", "Start one-small-step-for-vimkind" },
    -- ["dal"] = { "<cmd>lua require('ossv.nlua').start()<cr>", "Start one-small-step-for-vimkind" },
    -- ["s"] = { "<cmd>lua require('flash').flash()<cr>", "Flash word" },
    -- ["S"] = { "<cmd>lua require('flash').flash_ts()<cr>", "Flash selection" },
    -- ["fm"] = { "<cmd>lua require('lazyvim.plugins.extras.editor.mini-files').open_mini_files('current')<cr>", "Open mini-files for current buffer" },
    -- ["fM"] = { "<cmd>lua require('lazyvim.plugins.extras.editor.mini-files').open_mini_files('cwd')<cr>", "Open mini-files for current working directory" },
    -- ["tt"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').run_file()<cr>", "Run current test file" },
    -- ["tT"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').run_all_test_files()<cr>", "Run all test files" },
    -- ["tr"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').run_nearest()<cr>", "Run nearest test" },
    -- ["ts"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').toggle_summary()<cr>", "Toggle test summary" },
    -- ["to"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').show_output()<cr>", "Show test output" },
    -- ["tO"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').toggle_output_panel()<cr>", "Toggle test output panel" },
    -- ["tS"] = { "<cmd>lua require('lazyvim.plugins.extras.test.core').stop()<cr>", "Stop running tests" },
    -- ["td"] = { "<cmd>lua require('lazyvim.plugins.extras.edtest.core').debug_nearest()<cr>", "Debug nearest" },
    -- ["ue"] = { "<cmd>lua require('lazyvim.plugins.extras.ui.edgy').toggle()<cr>", "Toggle Edgy" },
    -- ["uE"] = { "<cmd>lua require('lazyvim.plugins.extras.ui.edgy').select_window()<cr>", "Select Edgy window" },
    -- ["fp"] = { "<cmd>lua require('lazyvim.plugins.extras.util.project').projects()<cr>", "Open project list" },
    b = {
      name = "Bufferline",
      p = { ":BufferLinePick<CR>", "Pick buffer" },
      P = { ":BufferLineCloseBuffersRight<CR>", "Close all buffers to the right" },
    },
    c = {
      name = "Mason",
      m = { ":Mason<CR>", "Run Mason" },
    },
    -- e = {
    --   name = "NvimTree",
    --   ["<leader>"] = { ":NvimTreeFindFile<CR>", "Find file" },
    --   ["<leader>e"] = { ":NvimTreeToggle<CR>", "Toggle NeoTree" },
    -- },
    f = {
      name = "Flit",
      f = { ":<C-u>Flit<CR>", "Flit forward" },
      F = { ":<C-u>Flit!<CR>", "Flit backward" },
      t = { ":<C-u>FlitTab<CR>", "Flit to new tab" },
      T = { ":<C-u>FlitTab!<CR>", "Flit to new tab (split)" },
    },
    g = {
      name = "Leap",
      s = { ":Leap<CR>", "Leap forward" },
      S = { ":LeapBack<CR>", "Leap backward" },
      s = { ":LeapFromWindows<CR>", "Leap from windows" },
    },
    n = {
      name = "Notify",
      u = { ":NotifyClear<CR>", "Clear notifications" },
    },
    s = {
      name = "Noice",
      n = { ":NoiceLast<CR>", "Show last notification" },
      h = { ":NoiceHistory<CR>", "Show notification history" },
      a = { ":NoiceAll<CR>", "Show all notifications" },
      d = { ":NoiceDismissAll<CR>", "Dismiss all notifications" },
    },
    ["<C-Space>"] = {
      ":lua require('nvim-treesitter.selectors').increment_selection()<CR>",
      "Increment selection",
    },
    ["<BS>"] = {
      ":lua require('nvim-treesitter.selectors').decrement_selection()<CR>",
      "Decrement selection",
    },
    q = {
      name = "Persistence",
      s = { ":lua require('persistence').load()<CR>", "Load session" },
      l = { ":lua require('persistence').load_last()<CR>", "Load last session" },
      d = { ":lua require('persistence').stop()<CR>", "Stop persistence" },
    },
    b = {
      name = "Mini",
      d = { ":Bdelete<CR>", "Delete buffer" },
      D = { ":Bdelete!<CR>", "Force delete buffer" },
    },
    z = {
      name = "MiniSurround",
      a = { ":<C-u>MiniSurroundAdd<CR>", "Add surround" },
      d = { ":<C-u>MiniSurroundDelete<CR>", "Delete surround" },
      f = { ":<C-u>MiniSurroundFindRight<CR>", "Find right surround" },
      F = { ":<C-u>MiniSurroundFindLeft<CR>", "Find left surround" },
      h = { ":<C-u>MiniSurroundHighlight<CR>", "Highlight surround" },
      r = { ":<C-u>MiniSurroundReplace<CR>", "Replace surround" },
      n = { ":<C-u>MiniSurroundUpdateConfig<CR>", "Update configuration" },
    },
  }
  
-- Register your mappings with WhichKey
require("which-key").register(mappings, {
  mode = "n",
  prefix = "<leader>",
  show_help = true,
})