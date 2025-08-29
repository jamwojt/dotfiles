vim.lsp.enable({
    "lua_ls",
    "gopls",
    "pyright"
})

vim.diagnostic.config({
    virtual_text = true, -- Inline diagnostics
    signs = true,        -- Gutter signs
    underline = true,    -- Underline issues
    update_in_insert = true,
    severity_sort = true,
    float = { border = "single" }
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help,
    { border = "single" }
)
