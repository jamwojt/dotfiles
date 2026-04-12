local blink = require("blink.cmp")
local capabilities = blink.get_lsp_capabilities()

vim.lsp.config("*", {
    capabilities = capabilities,
})

blink.setup({
  keymap = { preset = "default" },

  appearance = {
    nerd_font_variant = "normal",
  },

  completion = {
    documentation = {
      auto_show = false,
    },
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  fuzzy = {
    implementation = "lua",
  },
})
