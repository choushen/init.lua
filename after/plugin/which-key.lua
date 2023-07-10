local wk = require("which-key")

-- Register your mappings with WhichKey
require("which-key").register(mappings, {
    mode = "n",
    prefix = "<leader>",
    show_help = true,
  })