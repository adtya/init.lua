require("lspkind").init({
  mode = "symbol_text",
})

require("lsp_lines").setup()
vim.diagnostic.config({
  virtual_text = false,
})

local vim_lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
vim_lsp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local lsp_capabilities = vim.tbl_deep_extend(
  "force",
  require("cmp_nvim_lsp").default_capabilities(),
  vim_lsp_capabilities,
  { workspace = { didChangeConfiguration = { dynamicRegistration = true } } }
)

local lspconfig = require("lspconfig")

lspconfig.bashls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.cssls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.cssmodules_ls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.gopls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.jsonls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.lua_ls.setup({
  capabilities = lsp_capabilities,
  on_init = function(client)
    local path = client.workspace_folders[1].name
    if vim.uv.fs_stat(path .. "/.luarc.json") and not vim.uv.fs_stat(path .. "/.luarc.jsonc") then
      return
    end

    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    })
  end,
  settings = {
    Lua = {},
  },
})

lspconfig.nil_ls.setup({
  capabilities = lsp_capabilities,
})

lspconfig.ruby_lsp.setup({
  capabilities = lsp_capabilities,
})

lspconfig.rust_analyzer.setup({
  capabilities = lsp_capabilities,
})

lspconfig.volar.setup({
  capabilities = lsp_capabilities,
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
})

vim.keymap.set("n", "<F2>", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<F3>", vim.diagnostic.goto_next)

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    local opts = { buffer = ev.vuf }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  end,
})

-- refer https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
