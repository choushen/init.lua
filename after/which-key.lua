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
  }
  
-- Register your mappings with WhichKey
require("which-key").register(mappings, {
  mode = "n",
  prefix = "<leader>",
  show_help = true,
})