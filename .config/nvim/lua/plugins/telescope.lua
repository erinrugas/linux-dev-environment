return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "truncate " },
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous, -- move to prev result
							["<C-j>"] = actions.move_selection_next, -- move to next result
						},
					},
				},
			})

			telescope.load_extension("fzf")

			local builtin = require("telescope.builtin")

			local keymap = vim.keymap
			keymap.set("n", "<C-p>", builtin.find_files, {}) -- find files
			keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- search string in file
			keymap.set("n", "<leader>fr", builtin.oldfiles, {}) -- find recent file
			keymap.set("n", "<leader>fgs", builtin.grep_string, {}) -- find string under cursor

			telescope.load_extension("ui-select")
		end,
	},
}
