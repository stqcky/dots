local M = {}

M.ui = {
  theme = "catppuccin",
}

M.plugins = {
    user = {
        ["neovim/nvim-lspconfig"] = {
            config = function()
                require "plugins.configs.lspconfig"
                require "custom.plugins.lspconfig"
            end
        },
        ["jose-elias-alvarez/null-ls.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require "custom.plugins.null-ls"
            end
        },
        ["folke/which-key.nvim"] = {
            disable = false
        },
        ["iamcco/markdown-preview.nvim"] = {
            run = function()
                vim.fn["mkdp#util#install"]()
            end
        },
        ["windwp/nvim-ts-autotag"] = {

        }
    }
}

return M
