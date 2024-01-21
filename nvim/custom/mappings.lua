local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } }
    }
}

M.debug = {
    n = {
        ["<leader>db"] = {
            function()
                require("dap").continue()
                require("dapui").open()
            end,
            "start debugging session"
        }
    }
}

return M
