return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")

		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
		})

		lspconfig["phpactor"].setup({
			capabilities = capabilities,
			filetypes = { "php", "blade" },
		})

		-- configure typescript server with plugin
		lspconfig["tsserver"].setup({
			capabilities = capabilities,
		})

		lspconfig["jsonls"].setup({

			capabilities = capabilities,
		})

		lspconfig["html"].setup({
			capabilities = capabilities,
		})

		lspconfig["tailwindcss"].setup({
			capabilities = capabilities,
		})

		lspconfig["cssls"].setup({
			capabilities = capabilities,
		})

		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "vue" },
		})

		local keymap = vim.keymap
		keymap.set("n", "<C-h>", vim.lsp.buf.hover, {}) --show documentation
		keymap.set("n", "<C-g-d>", vim.lsp.buf.definition, {})
		keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action, {})
	end,
}
