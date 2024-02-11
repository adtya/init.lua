local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "buffer" },
    { name = "luasnip" },
  }),
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol_text",
    }),
  },
})
