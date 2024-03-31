return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.biome,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.blade_formatter,
                null_ls.builtins.diagnostics.ktlint,
                null_ls.builtins.diagnostics.markdownlint,
                null_ls.builtins.diagnostics.phpcs,
                null_ls.builtins.diagnostics.phpstan,
                null_ls.builtins.diagnostics.proselint,
                null_ls.builtins.diagnostics.pylint,
                null_ls.builtins.completion.spell,
            },
        })
        vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format, {})
    end,
}
