return {
	{
		"adalessa/laravel.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"tpope/vim-dotenv",
			"MunifTanjim/nui.nvim",
			"nvimtools/none-ls.nvim",
		},
		cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
		keys = {
			{ "<leader>pa", ":Artisan<cr>" },
			{ "<leader>lr", ":Laravel routes<cr>" },
			{ "<leader>npm", ":Npm<cr>" },
			{ "<leader>ndev", ":Npm dev<cr>" },
			{ "<leader>cmp", ":Composer<cr>" },
			{ "<leader>cmpda", ":Composer dump-autoload<cr>" },
			{ "<leader>cmpu", ":Composer update<cr>" },
		},
		event = { "VeryLazy" },
		config = true,
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			local notify = require("notify")
			-- this for transparency
			notify.setup({ background_colour = "#000000" })
			-- this overwrites the vim notify function
			vim.notify = notify.notify
		end,
	},
}
