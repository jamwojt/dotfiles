return {

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		defaults = {
			mappings = {
                i = {
                    ["<C-q>"] = "smart_send_to_qflist"
                }
			},
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<Leader>fd", ":Telescope find_files hidden=true no_ignore=true<CR>", {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<Leader>fb", builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set("n", "<Leader>fp", builtin.diagnostics, {})
			vim.keymap.set("n", "<Leader>ft", builtin.treesitter, {})
			vim.keymap.set("n", "<Leader>fr", builtin.registers, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
