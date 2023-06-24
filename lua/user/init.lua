print("lua/init.lua - success")
vim.wo.number = true
require("user.remap")


-- Call a function in colors.lua after PackerSync
vim.cmd([[autocmd User PackerSyncDone lua require('colors').ColorMyPencils()]])


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25 
