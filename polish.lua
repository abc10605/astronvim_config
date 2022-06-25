Sql_ext = {
	"ansi",
	"bigquery",
	"clickhouse",
	"databricks",
	"db2",
	"exasol",
	"hive",
	"mysql",
	"oracle",
	"postgres",
	"redshift",
	"snowflake",
	"soql",
	"sparksql",
	"sqlite",
	"teradata",
	"tsql",
}

return function()
	-- Set key binding
	vim.keymap.del("t", "<esc>") -- disable esc on toggleterm

	-- Set autocommands
	vim.api.nvim_create_augroup("packer_conf", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		desc = "Sync packer after modifying plugins.lua",
		group = "packer_conf",
		pattern = "plugins.lua",
		command = "source <afile> | PackerSync",
	})

	-- close specific window(buffer) with q key
	vim.api.nvim_create_autocmd({ "FileType" }, {
		pattern = { "qf", "help", "man", "lspinfo", "notify", "dap-float", "sqls_output", "tsplayground", "aerial" },
		callback = function()
			vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      set nobuflisted 
    ]])
		end,
	})

	-- sqls
	vim.api.nvim_create_augroup("sqls", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		desc = "Execute the SQL file after saving",
		group = "sqls",
		pattern = "*.sql",
		command = "SqlsExecuteQuery",
	})

	-- Set up custom filetypes
	for _, e in ipairs(Sql_ext) do
		vim.filetype.add({
			extension = {
				[e] = "sql",
			},
		})
	end
	-- vim.filetype.add {
	--   extension = {
	--     foo = "fooscript",
	--   },
	--   filename = {
	--     ["Foofile"] = "fooscript",
	--   },
	--   pattern = {
	--     ["~/%.config/foo/.*"] = "fooscript",
	--   },
	-- }
end
