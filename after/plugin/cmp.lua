require("cmp_git").setup()
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-space>"] = cmp.mapping.complete(),
    ["<C-q>"] = cmp.mapping.close(),
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  }),
  formatting = {
    format = require("lspkind").cmp_format({
      mode = "symbol_text",
    }),
  },
})

cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" },
  }, {
    { name = "buffer" },
  }),
})
