local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    diagnostics.eslint_d.with({
      diagnostics_format = '[eslint]\n #{m}\n(#{c})'
    }),
    formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]])
    end
  end,
})
