require("config.options")
require("config.keymaps")
require("config.autocmds")

local function gh(plugin)
	return "https://github.com/" .. plugin
end

-- install plugins
vim.pack.add({
	gh("oxfist/night-owl.nvim"),
	gh("nvim-lua/plenary.nvim"),
	gh("dmtrKovalenko/fff.nvim"),
	gh("mason-org/mason.nvim"),
	gh("neovim/nvim-lspconfig"),
	gh("rafamadriz/friendly-snippets"),
	gh("saghen/blink.cmp"),
	gh("lewis6991/gitsigns.nvim"),
	gh("lukas-reineke/indent-blankline.nvim"),
	gh("nvim-lualine/lualine.nvim"),
	gh("nvim-treesitter/nvim-treesitter"),
	gh("echasnovski/mini.icons"),
	gh("MeanderingProgrammer/render-markdown.nvim"),
	gh("echasnovski/mini.pairs"),
	gh("christoomey/vim-tmux-navigator"),
	gh("chomosuke/typst-preview.nvim"),
	gh("nvimtools/none-ls.nvim"),
    gh("immanuwell/droast.nvim"),
})

-- require plugin setup files
require("plugins.mason")
require("plugins.night_owl")
require("plugins.fff")
require("plugins.blink")
require("plugins.indent-blankline")
require("plugins.lualine")
require("plugins.mini-pairs")
require("plugins.vim-tmux-navigator")
require("plugins.typst-preview")
require("plugins.none-ls")
require("plugins.droast")

-- require lsp files
require("lsp.lua_ls")
require("lsp.stylua")
require("lsp.ruff")
require("lsp.pyrefly")
require("lsp.gopls")
require("lsp.tinymist")
