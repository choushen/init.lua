require('lspconfig').pyright.setup({})

require('compe').setup {
    enabled = true;
    autocomplete = true;
    debug = false;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    resolve_timeout = 800;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = {
      border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
      winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
      max_width = 120,
      min_width = 60,
      max_height = math.floor(vim.o.lines * 0.3),
      min_height = 1,
    };
  
    source = {
      path = true;
      buffer = true;
      calc = true;
      nvim_lsp = true;
      nvim_lua = true;
      vsnip = true;
      ultisnips = true;
      luasnip = true;
    };
  }

  -- Plugin configurations
-- require('telescope').setup()
-- require('vsnip').setup()
-- require('nvim-autopairs').setup({})
-- require('surround').setup({})
-- require('commentary').setup({})
-- require('fugitive').setup({})
-- require('dispatch').setup({})
-- require('sleuth').setup({})
-- require('abolish').setup({})
-- require('endwise').setup({})
-- require('eunuch').setup({})
-- require('projectionist').setup({})
-- require('scriptease').setup({})
-- require('speeddating').setup({})
-- require('vinegar').setup({})
-- require('characterize').setup({})
-- require('obsession').setup({})
-- require('rsi').setup({})
-- require('zenroom').setup({})
-- require('zip').setup({})
-- require('jdaddy').setup({})
-- require('grammarous').setup({})
-- require('liquid').setup({})
-- require('ragtag').setup({})
-- require('rails').setup({})
-- require('bundler').setup({})
-- require('rake').setup({})
-- require('ruby').setup({})
-- require('rvm').setup({})