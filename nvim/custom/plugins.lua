return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.configs.null-ls"
            end
        },

        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end
    },
    {
        "folke/which-key.nvim",
        enabled = true
    },
    {
        "windwp/nvim-ts-autotag"
    },
    {
        "mfussenegger/nvim-dap",

        config = function()
            require "custom.configs.nvim-dap"
        end,
        dependencies = {
            {
                "theHamsta/nvim-dap-virtual-text",
                "rcarriga/nvim-dap-ui",
            }
        }
    },
    -- {
    --     "mrcjkb/rustaceanvim",
    --     lazy = false
    -- },
    {
        "rcarriga/nvim-notify",
        lazy = false,
        config = function()
            local notify = require "notify"

            vim.notify = notify

            print = function(...)
                local print_safe_args = {}
                local _ = { ... }
                for i = 1, #_ do
                    table.insert(print_safe_args, tostring(_[i]))
                end
                notify(table.concat(print_safe_args, ' '), "info")
            end
        end,
        dependencies = {
            "mrded/nvim-lsp-notify",
            config = function()
                require("lsp-notify").setup({
                    notify = require "notify"
                })
            end
        }
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_cursor({})
                    },
                }
            })

            require("telescope").load_extension("ui-select")
        end,
        event = "LspAttach"
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                -- Lua
                "lua-language-server",
                "stylua",

                -- Web
                "eslint_d",
                "svelte-language-server",
                "prettierd",
                "css-lsp",

                -- Rust
                "rust-analyzer",

                -- Debugging
                "codelldb"
            }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "lua",
                "html",
                "css",
                "scss",
                -- "rust",
                "svelte",
                "typescript",
                "javascript",
                "markdown",
                "toml",
                "json",
                "bash"
            }
        }
    }
}
