return {
	requires = "nvim-lua/plenary.nvim",
	config = function()
		require("user.plugins.todo-comments.config")
	end,
}
