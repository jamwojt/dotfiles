vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end

		-- defaults:
		-- https://neovim.io/doc/user/news-0.11.html#_defaults

		map("<leader>ld", vim.diagnostic.open_float, "Open Diagnostic Float")
		map("<leader>gd", vim.lsp.buf.definition, "Goto Definition")
		map("<leader>fm", vim.lsp.buf.format, "Format")
	end,
})
