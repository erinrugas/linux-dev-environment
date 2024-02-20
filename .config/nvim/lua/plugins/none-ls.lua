return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason_null_ls = require("mason-null-ls")
		local null_ls = require("null-ls")

		mason_null_ls.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d", -- js linter
				"pint",
			},
		})

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters
		local null_ls_utils = require("null-ls.utils")

		null_ls.setup({
			root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json", "composer.json"),
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.pint,
				diagnostics.eslint_d.with({
					condition = function(utils)
						return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" }) -- enable if root has .eslintrc.js or .eslintrc.cjs
					end,
				}),
			},

			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									--  only use null-ls for formatting instead of lsp server
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<M-f>", vim.lsp.buf.format, {}) --auto code format (alt+f)
	end,
}
