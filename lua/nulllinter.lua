local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
  },
})

--vim.api.nvim_create_autocmd("BufWritePost", {
--  callback = function()
--    vim.diagnostic.setqflist({ open = true })
--  end,
--})
