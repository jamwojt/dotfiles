return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
        },
        lazy = false,
        init = function()
            local lspCapabilities = vim.lsp.protocol.make_client_capabilities()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            lspCapabilities.textDocument.completion.completionItem.snippetSupport = true

            local lspConfig = require("lspconfig")

            lspConfig.lua_ls.setup({ capabilities = capabilities })

            lspConfig.pyright.setup({
                capabilities = capabilities,

            })

            lspConfig.ruff.setup({
                -- capabilities = capabilities,
                init_options = {
                    settings = {
                        lineLength = 88,
                        fixAll = true,
                        lint = {
                            enable = true,
                            extendSelect = {
                                "ANN001",
                                "ANN2",
                                "SIM",
                                "ARG",
                                "NPY",
                                "PD",
                                "PERF",
                                "E",
                                "W",
                                "D",
                                "F",
                                "RUF",
                                "TRY",
                            },
                            ignore = {
                                "D100",
                                "D4"
                            },
                        },
                        format = {
                            quouteStyle = "double",
                            docstringCodeFormat = true,
                            organizeImports = true,
                        },
                    },
                },
            })

            -- lspConfig.gopls.setup({
            --     capabilities = capabilities,
            --     settings = {
            --         gopls = {
            --             analyses = {
            --                 unusedparams = true,
            --             },
            --             staticcheck = true,
            --             gofumpt = true,
            --         },
            --     },
            -- })

            lspConfig.tinymist.setup({
                capabilities = capabilities,
                settings ={
                    formatterMode = "typstyle",
                    exportPdf = "never"
                }
            })

            lspConfig.rust_analyzer.setup({
                capabilities = capabilities
            })
        end,
    },
}
