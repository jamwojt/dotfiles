vim.lsp.enable("ruff", {
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
                    "D4",
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
