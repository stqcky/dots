---@type UIConfig
local M = {
    theme = "penumbra_dark",
    transparency = true,
    nvdash = {
        load_on_startup = true
    },
    cmp = {
        style = "atom",
        lspkind_text = false,
        selected_item_bg = "colored"
    },
    statusline = {
        theme = "vscode_colored",
        separator_style = "default",
        overriden_modules = function(modules)
            modules[6] = ""                  -- LSP
            modules[8] = ""                  -- git changes
            modules[9] = "%#StText# %l-%c  " -- cursor position
            modules[10] = ""                 -- file encoding
            modules[13] = ""                 -- cwd
        end
    },
    hl_override = {
        CmpDoc = {
            bg = "NONE"
        },
        CmpDocBorder = {
            fg = "one_bg",
        },
        FloatBorder = {
            fg = "one_bg"
        },
        TelescopeBorder = {
            fg = "one_bg"
        },
    },
    hl_add = {
        NotifyBackground = {
            fg = "#000000",
            bg = "#000000"
        },
        NvimDapVirtualText = {
            fg = "red"
        }
    },
    extended_integrations = { "alpha", "dap", "notify" }
}

return M
