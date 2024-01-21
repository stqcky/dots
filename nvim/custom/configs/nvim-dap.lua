local dap = require "dap"

dap.adapters.codelldb = {
    type = "server",
    host = "127.0.0.1",
    port = 13000,
}

dap.configurations.rust = {
    {
        name = "Rust Debug",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = true,
        sourceLanguages = { "rust" },
        showDisassembly = "never"
    }
}

require("dapui").setup()
