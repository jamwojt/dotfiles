return {
    {
        "nvimtools/none-ls.nvim",
        dependancies = { "fatih/vim-go" },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                debug = true,
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.isort.with({
                        extra_args = {
                            "--profile",
                            "black",
                            "--lines-after-imports",
                            "2"
                        },
                    }),
                },
                null_ls.builtins.formatting.gofmt,
                update_in_insert = false,
            })
        end,
    },
}
