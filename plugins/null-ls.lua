local function get_dialect()
	local ext = vim.fn.expand("%:e")
	for _, e in ipairs(Sql_ext) do
		if ext == e then
			return { "--dialect", ext }
		end
	end
	vim.notify(
		"Please use the sql dialect as the extension, see the `sqlfluff dialects` command",
		"INFO",
		{ title = "null-ls" }
	)
	return { "--dialect", "ansi" }
end

return function(config)
	-- Formatting and linting
	-- https://github.com/jose-elias-alvarez/null-ls.nvim
	local null_ls = require("null-ls")
	-- Check supported formatters
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	local formatting = null_ls.builtins.formatting
	-- Check supported linters
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
	local diagnostics = null_ls.builtins.diagnostics
	local code_actions = null_ls.builtins.code_actions
	local hover = null_ls.builtins.hover
	config.sources = {
		-- Set a formatter
		formatting.stylua,
		formatting.autopep8,
		formatting.prettierd.with({
			env = {
				PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/.prettierrc.json"),
			},
		}),
		formatting.sqlfluff.with({
			extra_args = get_dialect, -- change to your dialect
		}),

		-- Set a linter
		diagnostics.golangci_lint,
		diagnostics.sqlfluff.with({
			extra_args = get_dialect, -- change to your dialect
		}),

		-- code_actions
		code_actions.eslint_d.with({
			prefer_local = "node_modules/.bin",
		}),

		-- dictionary
		hover.dictionary,
	}
	-- NOTE: You can remove this on attach function to disable format on save
	config.on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			vim.api.nvim_create_autocmd("BufWritePre", {
				desc = "Auto format before save",
				pattern = "<buffer>",
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end
	return config
end
