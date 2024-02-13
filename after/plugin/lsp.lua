require("lspkind").init({
  mode = "symbol_text",
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
    if not vim.loop.fs_stat(path .. "/.luarc.json") and not vim.loop.fs_stat(path .. "/.luarc.jsonc") then
      client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME,
            },
          },
        },
      })
      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
  end,
})

lspconfig.nixd.setup({
  capabilities = lsp_capabilities,
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
