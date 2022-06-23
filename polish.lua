return function()
	-- Set key binding
	vim.keymap.del("t", "<esc>")

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
	-- Set up custom filetypes
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
