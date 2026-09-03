require("nvim-treesitter.configs").setup({
    auto_install = true,
    ensure_installed = {"lua", "python", "bash", "markdown_inline"},
    highlight = {enable = true},
    indent = {enable = true},
})
