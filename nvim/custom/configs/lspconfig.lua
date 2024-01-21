local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

local servers = {
    "tsserver",
    "svelte",
    "cssls",
    "html",
    "rust_analyzer"
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = function(client, bufnr)
            client.server_capabilities.semanticTokensProvider = nil
            on_attach(client, bufnr)
        end,
        capabilities = capabilities,
    }
end
