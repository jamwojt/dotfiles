return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                debug = true,
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.isort.with({
                        extra_args = { "--profile", "black", "--lines-after-imports", "2" },
                    }),
                },
                update_in_insert = true,
            })
        end,
    },
}
