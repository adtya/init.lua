require("lspkind").init({
  mode = "symbol_text",
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  capabilities = capabilities,
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
  capabilities = capabilities,
})
