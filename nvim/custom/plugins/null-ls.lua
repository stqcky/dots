local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
    b.diagnostics.cppcheck,
    b.formatting.clang_format,
    b.formatting.prettier.with({
        extra_filetypes = { "svelte" }
    }),
    b.code_actions.eslint_d,
    b.diagnostics.eslint_d,
    b.formatting.pg_format,
}

null_ls.setup {
   sources = sources,
}
