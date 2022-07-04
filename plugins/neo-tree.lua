return {
	close_if_last_window = true,
	enable_diagnostics = true,
	enable_git_status = true,
	filesystem = {
		commands = {
			copy_file_name = function(state)
				local node = state.tree:get_node()
				vim.fn.setreg("*", node.name, "c")
				vim.notify({ "Copied file's name:", node.name }, "INFO", { title = "neo-tree" })
			end,
			copy_relative_path = function(state)
				local node = state.tree:get_node()
				local full_path = node.path
				local relative_path = full_path:sub(#state.path + 2)
				vim.fn.setreg("*", relative_path, "c")
				vim.notify({ "Copied file's relative path:", relative_path }, "INFO", { title = "neo-tree" })
			end,
		},
		window = {
			mappings = {
				["Y"] = "copy_file_name",
				["<C-y>"] = "copy_relative_path",
			},
		},
	},
}
